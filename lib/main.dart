import 'package:flutter/material.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Contacts_remastered.dart';
import 'package:text_scroll/text_scroll.dart';
import 'dart:developer';

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
List<String> recipents = ["9876543210", "8765432190"];
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  set value(value) {}
  bool selectingmode = false;

  void getContact() async {
    if (await FlutterContacts.requestPermission()) {
      contacts;
      print(contacts);
      setState(() {});
    }
  }
    /*** void _sendSMS(String message, List<String> recipents) async {
    String _result = await sendSMS(message: message, recipients: recipents)
        .catchError((onError) {
      print(onError);
    });
    print(_result);
  }***/

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
                  offset: Offset(5.0, -2.0),
                  blurRadius: 8.0,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                Shadow(
                  offset: Offset(5.0, -2.0),
                  blurRadius: 5.0,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ],
              fontSize: 36,
              fontFamily: 'Booter-Zero-zero',
              fontWeight: FontWeight.w500,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          backgroundColor: Color.fromRGBO(0,0,0,1),
        ),
        body:  ListView.builder(
                itemCount: contacts.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    onLongPress: () {
                      setState(() {
                        selectingmode = true;
                      });
                    },
                    onTap: () {
                      setState(() {
                        if (selectingmode) {
                          contacts[index].selected =
                              !contacts[index].selected;
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
                          )
                      ),
                    ),
                    title: TextScroll(
                      "${contacts[index].name}",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'JosefinSans-Italic-VariableFont_wght',
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(47, 48, 48, 1),
                      ),
                      mode: TextScrollMode.bouncing,
                      velocity: Velocity(pixelsPerSecond: Offset(25, 0)),
                      delayBefore: Duration(milliseconds: 1000),
                      numberOfReps: 50,
                      pauseBetween: Duration(milliseconds: 150),
                      textAlign: TextAlign.left,
                      selectable: true,
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
                                  onTap: (){ launch('tel: ${contacts[index].stu_num}');},
                                  child:  TextScroll(
                                    'Student: ${contacts[index].name}',
                                    mode: TextScrollMode.bouncing,
                                    velocity: Velocity(
                                        pixelsPerSecond: Offset(25, 0)),
                                    delayBefore: Duration(milliseconds: 1000),
                                    numberOfReps: 50,
                                    pauseBetween: Duration(milliseconds: 150),
                                    selectable: true,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                PopupMenuItem(
                                  onTap: (){ launch('tel: ${contacts[index].par_num}');},
                                  child: TextScroll(
                                    'Parent:  ${contacts[index].parent}',
                                    mode: TextScrollMode.bouncing,
                                    velocity: Velocity(
                                        pixelsPerSecond: Offset(25, 0)),
                                    delayBefore: Duration(milliseconds: 1000),
                                    numberOfReps: 50,
                                    pauseBetween: Duration(milliseconds: 150),
                                    selectable: true,
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
