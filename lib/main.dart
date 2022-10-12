import 'package:flutter/material.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Contacts_remastered.dart';
import 'dart:developer';
import 'package:flutter_sms/flutter_sms.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  runApp(const MyApp());
}

Map<int, Color> color = {
  50: Color.fromRGBO(48, 213, 200, .1),
  100: Color.fromRGBO(48, 213, 200, .2),
  200: Color.fromRGBO(48, 213, 200, .3),
  300: Color.fromRGBO(48, 213, 200, .4),
  400: Color.fromRGBO(48, 213, 200, .5),
  500: Color.fromRGBO(48, 213, 200, .6),
  600: Color.fromRGBO(48, 213, 200, .7),
  700: Color.fromRGBO(48, 213, 200, .8),
  800: Color.fromRGBO(48, 213, 200, .9),
  900: Color.fromRGBO(48, 213, 200, 1),
};
MaterialColor colorCustom = MaterialColor(200, color);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IT-A',
      theme: ThemeData(
        primarySwatch: colorCustom,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  set value(value) {}
  bool selectingmode = false;
  final TextEditingController _controller = TextEditingController();


  void getContact() async {
    if (await FlutterContacts.requestPermission()) {
      contacts;
      print(contacts);
      setState(() {});
    }
  }

  void _sendSMS(String message, List<String> recipents) async {
    String _result = await sendSMS(message: message, recipients: recipents)
        .catchError((onError) {
      print(onError);
    });
    print(_result);
  }

  Future<void> _displayTextInputDialog(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Message'),
            content: TextField(
              onChanged: (value) {
                setState(() {
                  valueText = value;
                });
              },
              controller: _controller,
              decoration: InputDecoration(border: OutlineInputBorder(),  hintText: "Enter your message here"),
            ),
            actions: <Widget>[
              TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.red,
                  padding: const EdgeInsets.all(7.0),
                  textStyle: const TextStyle(fontSize: 10),),
                child: Text('CANCEL'),
                onPressed: () {
                  setState(() {
                    Navigator.pop(context);
                  });
                },
              ),
              TextButton(
          style: TextButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Colors.green,
          padding: const EdgeInsets.all(7.0),
          textStyle: const TextStyle(fontSize: 10),),
                child: Text('OK'),
                onPressed: () {
                  for (int i = 0; i < contacts.length; i++)
                    if (contacts[i].selected)
                      messageGroup.add(contacts[i].stu_num);
                  _sendSMS(" $valueText",
                      //"Hey !! This is just a Test Msg😁 \n \t \t \t --Gm_Abhishek💫 ",
                      messageGroup);
                  messageGroup.clear();
                },
              ),
            ],
          );
        });
  }
  int count = 0;
  String valueText="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: selectingmode
              ? IconButton(
                  icon: const Icon(Icons.arrow_back_ios_new),
                  onPressed: () {
                    setState(() {
                      selectingmode = false;
                      contacts.forEach((p) => p.selected = false);
                    });
                  },
                )
              : null,
          title: const Text(
            "II IT-A Contacts",
            style: TextStyle(
              shadows: <Shadow>[
                Shadow(
                  offset: Offset(5.0, 2.0),
                  blurRadius: 8.0,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                Shadow(
                  offset: Offset(5.0, -.0),
                  blurRadius: 5.0,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ],
              fontSize: 36,
              fontFamily: 'Booter-Zero-zero',
              fontWeight: FontWeight.w700,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          backgroundColor: Color.fromRGBO(48, 213, 200, .6),
          actions: selectingmode
              ? <Widget>[
                  IconButton( icon: Icon(Icons.check_circle_rounded,size: 32,),color: Color.fromRGBO(93, 97, 97, 1),
                    onPressed: () {
                      setState(() {
                        for (int i = 0; i < contacts.length; i++)
                          if (contacts[i].selected) count++;
                        if (count == contacts.length) {
                          contacts.forEach((p) => p.selected = false);
                        } else {
                          contacts.forEach((p) => p.selected = true);
                        }
                        count = 0;
                      });
                    },
                  ),
                ]
              : null,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: selectingmode
            ? FloatingActionButton(
                onPressed: () {
                  _displayTextInputDialog(context);
                },backgroundColor: Color.fromRGBO(0, 0, 0, 1),
                child: Icon(Icons.chat,color: Color.fromRGBO(255,255,255,1),),
                elevation: 2.0,
              )
            : null,
        body: ListView.builder(
          itemCount: contacts.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              onLongPress: () {
                setState(() {
                  selectingmode = true;
                  contacts[index].selected;
                });
              },
              onTap: () {
                setState(() {
                  if (selectingmode) {
                    contacts[index].selected = !contacts[index].selected;
                    log(contacts[index].selected.toString());
                  }
                });
              },
              leading: GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () {},
                child: CircleAvatar(
                    radius: 24,
                    child: Text(
                      '${index + 1}',
                      style: TextStyle(
                        fontSize: 50,
                        fontFamily: 'Booter-Zero-zero',
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(47, 48, 48, 1),
                        shadows: <Shadow>[
                          Shadow(
                            offset: Offset(2.0, 2.0),
                            blurRadius: 5.0,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                          Shadow(
                            offset: Offset(2.0, 2.0),
                            blurRadius: 2.0,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ],
                      ),
                    )),
              ),
              title: Text(
                "${contacts[index].name}",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'JosefinSans-Italic-VariableFont_wght',
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(47, 48, 48, 1),
                ),
              ),
              trailing: (selectingmode)
                  ? ((contacts[index].selected)
                      ? Icon(Icons.check_box)
                      : Icon(Icons.check_box_outline_blank))
                  : PopupMenuButton(
                      constraints: BoxConstraints(
                          minHeight: 0,
                          minWidth: 50,
                          maxHeight: double.infinity,
                          maxWidth: double.infinity),
                      child: Icon(
                        Icons.add_call,
                        color: Color.fromRGBO(93, 97, 97, 1),
                        size: 36,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                              .copyWith(topRight: Radius.circular(0))),
                      elevation: 10,
                      color: Colors.grey.shade300,
                      itemBuilder: (context) {
                        return [
                          PopupMenuItem(
                            onTap: () {
                              launch('tel: ${contacts[index].stu_num}');
                            },
                            child: Text(
                              'Student: ${contacts[index].name}',
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          PopupMenuItem(
                            onTap: () {
                              launch('tel: ${contacts[index].par_num}');
                            },
                            child: Text(
                              'Parent:  ${contacts[index].parent}',
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ];
                      },
                    ),
            );
          },
        ));
  }
}