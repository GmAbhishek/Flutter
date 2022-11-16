import 'dart:async';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Contacts_remastered.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  runApp(const MyApp());
}

Map<int, Color> color = {
  50: Color.fromRGBO(0, 160, 255, .1),
  100: Color.fromRGBO(0, 160, 255, .2),
  200: Color.fromRGBO(0, 160, 255, .3),
  300: Color.fromRGBO(0, 160, 255, .4),
  400: Color.fromRGBO(0, 160, 255, .5),
  500: Color.fromRGBO(0, 160, 255, .6),
  600: Color.fromRGBO(0, 160, 255, .7),
  700: Color.fromRGBO(0, 160, 255, .8),
  800: Color.fromRGBO(0, 160, 255, .9),
  900: Color.fromRGBO(0, 160, 255, 1),
};
MaterialColor colorCustom = MaterialColor(500, color);

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

TextEditingController textarea = TextEditingController();

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  set value(value) {}
  bool selecting_mode = false;

  void warn_Box(BuildContext context)
    async {
      return showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
                title: Text('Warning', style: TextStyle(color: Colors.red)),
            content: const Text("Kindly provide input for all selected Contacts"),
                actions: <Widget>[TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.black,
                    padding: const EdgeInsets.all(12.0),
                    textStyle: const TextStyle(fontSize: 16),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('OK'),
                ),],
            );
          },
      );
  }
  Future<Future> _displayTextInputDialog(
      BuildContext context, String _con, String _res) async {
    String temp = "";
    for(int i=0 ; i<contacts.length;i++)
      {
        if(contacts[i].stu_num==_con)
          {
            temp= contacts[i].name;
          }
      }
    return await showDialog(
        context: context,
        builder: (context) {
         return AlertDialog(
            title: Text('Send to ${temp} Parent'),
            content: const Text("Kindly close all other Whatsapp sessions"),
            actions: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(3),
                child: Stack(
                  children: <Widget>[
                    Positioned.fill(
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: <Color>[
                              Colors.red,
                              Colors.redAccent,
                              Colors.deepOrange,
                            ],
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.all(12.0),
                        textStyle: const TextStyle(fontSize: 16),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Cancel'),
                    ),
                  ],
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(3),
                child: Stack(
                  children: <Widget>[
                    Positioned.fill(
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: <Color>[
                              Color.fromRGBO(29, 160, 108, 1),
                              Color.fromRGBO(29, 160, 108, 0.8),
                              Color.fromRGBO(29, 160, 108, 0.6),
                            ],
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.black,
                        padding: const EdgeInsets.all(12.0),
                        textStyle: const TextStyle(fontSize: 16),
                      ),
                      onPressed: () {
                        setState(() {
                          Navigator.pop(context);
                          launchUrl(Uri.parse(
                              'https://api.whatsapp.com/send?phone=91${_con}&text=${_res}'));
                        });
                      },
                      child: const Text('Send'),
                    ),
                  ],
                ),
              ),
            ],
          );
        });
  }

  int count = 0;
  static const def_pad = 20.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          leading: selecting_mode
              ? IconButton(
                  icon: const Icon(Icons.arrow_back_ios_new),
                  onPressed: () {
                    x=0;
                    textarea.clear();
                    result.clear();
                    setState(() {
                      selecting_mode = false;
                      contacts.forEach((p) => p.selected = false);
                    });
                  },
                )
              : null,
          title: const Text(
            "II IT-A Contacts",
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.w500,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          backgroundColor: Color.fromRGBO(0, 160, 255, .7),
          actions: selecting_mode?
              <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.yellowAccent,
                padding: const EdgeInsets.all(20.0),
                textStyle: const TextStyle(fontSize: 24),
              ),
              onPressed: () {},
              child: Text("${x}"),
            ),
            IconButton(
              icon: Icon(
                Icons.check_circle_rounded,
                size: 36,
              ),
              padding: const EdgeInsets.fromLTRB(0, 0, 5, 4),
              color: Color.fromRGBO(93, 97, 97, 1),
              onPressed: () {
                num++;
                if (num >= 1) x = 0;
                selecting_mode;
                setState(() {
                  for (int i = 0; i < contacts.length; i++)
                    if (contacts[i].selected) count++;
                  if (count == contacts.length) {
                    contacts.forEach((p) => p.selected = false);
                  } else {
                    contacts.forEach((p) => p.selected = true);
                  }
                  count = 0;
                  for (int i = 0; i < contacts.length; i++)
                    if (contacts[i].selected) x++;
                });
              },
            ),
          ]:null,),
      bottomNavigationBar: selecting_mode
          ? BottomAppBar(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: def_pad,
                  vertical: def_pad / 2,
                ),
                decoration: BoxDecoration(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 4),
                      blurRadius: 32,
                      color: Color(0xFF087949).withOpacity(0.08),
                    ),
                  ],
                ),
                child: SafeArea(
                  child: Row(
                    children: [
                      IconButton(
                          icon: Icon(Icons.clear_outlined),
                          onPressed: () {
                            textarea.clear();
                            result.clear();
                          }),
                      SizedBox(width: def_pad),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: def_pad * 0.75,
                          ),
                          decoration: BoxDecoration(
                            color:
                                Color.fromRGBO(93, 97, 97, 1).withOpacity(0.05),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Row(
                            children: [
                              SizedBox(width: def_pad / 4),
                              Expanded(
                                child: TextField(
                                  controller: textarea,
                                  decoration: InputDecoration(
                                    hintText: "Type message",
                                    border: InputBorder.none,
                                  ),
                                  onChanged: (value) {
                                    setState(() {
                                      result = value.split('Thanks');
                                      //valueText = value;
                                    });
                                  },
                                ),
                              ),
                              IconButton(
                                  icon: Icon(Icons.send),
                                  onPressed: ()  {
                                    messageGroup.clear();
                                    for (var i = 0;i < contacts.length;i++)
                                      contacts[i].selected? messageGroup.add(contacts[i].stu_num): null;
                                    if(messageGroup.length==result.length)
                                    for (var i = 0;i < contacts.length;i++) {
                                      _displayTextInputDialog(context,messageGroup[i], result[i]);
                                       }
                                    else
                                      warn_Box(context);
                                    log(result.toString());
                                    log(messageGroup.toString());
                                    log(messageGroup.length.toString());
                                    log(result.length.toString());
                                       result.clear();

                                  }),
                              SizedBox(width: def_pad / 4),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          : null,
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            onLongPress: () { Timer(Duration(seconds: 1), () {
              setState(() {
                selecting_mode = true;
                contacts[index].selected;
              }); });
            },
            onTap: () {
              setState(() {
                if (selecting_mode) {
                  contacts[index].selected = !contacts[index].selected;
                  if (contacts[index].selected ) x++;
                  else x--;
                }
              });
            },
            leading: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                setState(() {
                  if (selecting_mode) {
                    contacts[index].selected = !contacts[index].selected;
                  }
                });
              },
              child: CircleAvatar(
                  radius: 24,
                  backgroundColor: Color.fromRGBO(0, 160, 255, .5),
                  child: Text(
                    '${index + 1}',
                    style: GoogleFonts.gafata(
                      fontSize: 28,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(47, 48, 48, 1),
                    ),
                  )),
            ),
            title: Text(
              "${contacts[index].name}",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: GoogleFonts.notoSans(
                fontSize: 22,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(47, 48, 48, 1),
              ),
            ),
            trailing: (selecting_mode)
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
                      size: 28,
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
                            launchUrl(
                              Uri(
                                scheme: 'tel',
                                path: contacts[index].stu_num,
                              ),
                            );
                          },
                          child: Text(
                            'Student: ${contacts[index].name}',
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        PopupMenuItem(
                          onTap: () {
                            launchUrl(
                              Uri(
                                scheme: 'tel',
                                path: contacts[index].par_num,
                              ),
                            );
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
      ),
    );
  }
}
