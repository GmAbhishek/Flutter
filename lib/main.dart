import 'package:flutter/material.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Contacts.dart';
import 'package:text_scroll/text_scroll.dart';

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
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getContact();
  }

  void getContact() async {
    if (await FlutterContacts.requestPermission()) {
      contacts;
      print(contacts);
      setState(() {});
    }
  }
  void actionPopUpItemSelected(String value, String stu_num, String par_num) {
    if (value == 'stud') {
      launch('tel: ${stu_num}');
      // You can navigate the user to edit page.
    } else if (value == 'Par') {
      launch('tel: ${par_num}');

      // You can delete the item.
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "II IT-A Contacts",
            style: TextStyle(
              shadows: <Shadow>[
                Shadow(
                  offset: Offset(2.0, 2.0),
                  blurRadius: 8.0,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                Shadow(
                  offset: Offset(2.0, 2.0),
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
          centerTitle: true,
          backgroundColor: Colors.pinkAccent.withOpacity(0.7),
          elevation: 0,
        ),
        body: (contacts) == null
            ? Center(child: Icon(Icons.lens_outlined))
            : ListView.builder(
                itemCount: contacts!.length,
                itemBuilder: (BuildContext context, int index) {
                  String name = contacts![index].displayName.isEmpty
                      ? "Invalid Name"
                      : contacts![index].displayName;
                  String stu_num = (contacts![index].phones.isNotEmpty)
                      ? (contacts![index].phones.first.number)
                      : '--';
                  String par_num = (contacts![index].phones.isNotEmpty)
                      ? (contacts![index].name.middle)
                      : '--';
                  return ListTile(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    leading: CircleAvatar(
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
                    title: TextScroll(
                      "${name}",
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
                    trailing: PopupMenuButton(
                      constraints: BoxConstraints(
                          minHeight: 0,
                          minWidth: 50,
                          maxHeight: double.infinity,
                          maxWidth: double.infinity),
                      // child: Container(
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
                            value: 'stud',
                            child: TextScroll(
                              'Student: ${name}',
                              mode: TextScrollMode.bouncing,
                              velocity:
                                  Velocity(pixelsPerSecond: Offset(25, 0)),
                              delayBefore: Duration(milliseconds: 1000),
                              numberOfReps: 50,
                              pauseBetween: Duration(milliseconds: 150),
                              selectable: true,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          PopupMenuItem(
                            value: 'Par',
                            child: TextScroll(
                              'Parent:  ${contacts![index].name.first}',
                              mode: TextScrollMode.bouncing,
                              velocity:
                                  Velocity(pixelsPerSecond: Offset(25, 0)),
                              delayBefore: Duration(milliseconds: 1000),
                              numberOfReps: 50,
                              pauseBetween: Duration(milliseconds: 150),
                              selectable: true,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ];
                      },
                      onSelected: (String value) =>
                          actionPopUpItemSelected(value, stu_num, par_num),
                    ),
                  );
                },
              ));
  }
}
