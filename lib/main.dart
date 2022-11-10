import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Contacts_remastered.dart';
import 'dart:developer';
//import 'package:flutter_sms/flutter_sms.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:whatsapp/whatsapp.dart';
void main() async {
  runApp(const MyApp());
}

Map<int, Color> color = {
  50: Color.fromRGBO(48, 213, 200, .1),
  100: Color.fromRGBO(48, 213, 200, .2),
  200: Color.fromRGBO(200, 213, 255, .6),
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

TextEditingController textarea = TextEditingController();

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

//var _url = "https://api.whatsapp.com/send?phone=91";

/*void _launchURL(txt) async => await canLaunch(_url + txt)
    ? await launch(_url + txt)
    : throw 'Could not launch $_url';*/
TextEditingController _textFieldController = TextEditingController();

class _MyHomePageState extends State<MyHomePage> {
  set value(value) {}
  bool selectingmode = false;
  bool hellmode = false;
  Future<void> _displayTextInputDialog(BuildContext context,String _con,String _res) async {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Confirm'),
            content: const Text("Kindly close all other Whatsapp sessions"),
            actions: <Widget>[
              TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.green, // Text Color
                ),
                child: Text('Send'),
                onPressed: () {
                  setState(() {
                    Navigator.pop(context);
                    launch(
                       'https://api.whatsapp.com/send?phone=91${_con}&text=Greetings+${_res}');
                       // 'https:/wa.me/${_con}?text=Greetings+${_res}');
                  });
                },
              ),
             /* ElevatedButton(
                style: TextButton.styleFrom(
                  primary: Colors.green, // Text Color
                ),
                child: Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                  launch(
                      'https:/wa.me/${_con}?text=Greetings+${_res}');
                },
              ),
*/
            ],
          );
        });
  }
/*  void showAlert(String _con,String _res) async {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("Confirm"),
            content: const Text("Kindly close all other Whatsapp sessions"),
            actions: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    launch(
                        'https:/wa.me/+91${_con}?text=Greetings+${_res}');
                  },
                  child: const Text("OK"))
            ],
          );
        });
  }*/

  /*void getContact() async {
    if (await FlutterContacts.requestPermission()) {
      contacts;
      print(contacts);
      setState(() {});
    }
  }*/

  /*void _sendSMS(String message, List<String> recipents) async {
    String _result = await sendSMS(message: message, recipients: recipents)
        .catchError((onError) {
      print(onError);
    });
    print(_result);
  }*/

  int count = 0;
  String valueText = "";

  //var whatsappUrl = "whatsapp://send?phone=${"+91"}";

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
        backgroundColor: Color.fromRGBO(0, 213, 200, .6),
        actions: selectingmode
            ? <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.check_circle_rounded,
                    size: 36,
                  ),
                  color: Color.fromRGBO(93, 97, 97, 1),
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

      bottomNavigationBar: selectingmode
          ? BottomAppBar(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: kDefaultPadding,
                  vertical: kDefaultPadding / 2,
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
                            valueText = "";
                          }),
                      SizedBox(width: kDefaultPadding),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: kDefaultPadding * 0.75,
                          ),
                          decoration: BoxDecoration(
                            color:
                                Color.fromRGBO(93, 97, 97, 1).withOpacity(0.05),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Row(
                            children: [
                              SizedBox(width: kDefaultPadding / 4),
                              Expanded(
                                child: TextField(
                                  controller: textarea,
                                  decoration: InputDecoration(
                                    hintText: "Type message",
                                    border: InputBorder.none,
                                  ),
                                  onChanged: (value) {
                                    setState(() {
                                      valueText = value;
                                    });
                                    // result = value.split('Greetings');
                                  },
                                ),
                              ),
                              IconButton(
                                  icon: Icon(Icons.send),
                                  onPressed: () {
                                    result = valueText.split('Greetings');
                                    for (var i = contacts.length-1; i >=0; i--) {
                                      _displayTextInputDialog(context,contacts[i].stu_num,result[i+1]);
                                    }
                                       // launch('https:/wa.me/${contacts[i].par_num}?text=Greetings+${result[i]}');

                                    /* messageGroup.add(contacts[i].par_num);
                                    else
                                        messageGroup.add("");
                                    for (int i = 0; i < messageGroup.length; i++)*/
                                    //launch('whatsapp://send?phone=91${messageGroup[i]}'+"&text=${Uri.encodeComponent(_messageController.text)}");
                                    /* for(int i=0;i<contacts.length;i++)// {
                                      finalmessage.add(messageGroup[i]);*/
                                    /*  _sendSMS(
                                        "$valueText",
                                        // "$valueText",
                                        //"Hey !! This is just a Test Msg😁 \n \t \t \t --Gm_Abhishek💫 ",
                                    messageGroup);
                                    //}*/
                                    messageGroup.clear();
                                  }),
                              /*Icon(
                      Icons.send,
                      color: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .color!
                          .withOpacity(0.64),
                    ),*/
                              SizedBox(width: kDefaultPadding / 4),
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

      /*TextFormField(
                  onChanged: (value) {
                    setState(() {
                      valueText = value;
                    });
                  },
                  controller: _controller,
                  decoration: InputDecoration(
                    hintText: "Enter your message here",
                    prefixIcon: IconButton(
                        onPressed: () {
                          valueText = "";
                        },
                        icon: Icon(Icons.cancel_outlined)),
                    /*Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [IconButton(onPressed: (){valueText = "";}, icon: Icon(Icons.cancel_outlined)), Text(" "),],
                      ),*/
                    suffixIcon: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                            icon: Icon(Icons.send),
                            onPressed: () {
                              for (int i = 0; i < contacts.length; i++)
                                if (contacts[i].selected)
                                  messageGroup.add(contacts[i].par_num);
                              _sendSMS(
                                  " $valueText",
                                  //"Hey !! This is just a Test Msg😁 \n \t \t \t --Gm_Abhishek💫 ",
                                  messageGroup);
                              messageGroup.clear();
                            }),
                        Icon(Icons.send)
                      ],
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: 1,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 1),
                    ),
                  ),
                ), */ /**TextField(
        onChanged: (value) {
        setState(() {
        valueText = value;
        });
        },
        controller: _controller,
        decoration: InputDecoration(
        prefixIcon: IconButton(onPressed: (){valueText = "";}, icon: Icon(Icons.cancel_outlined)),
        suffixIcon:IconButton(onPressed: () {
        for (int i = 0; i < contacts.length; i++)
        if (contacts[i].selected)
        messageGroup.add(contacts[i].par_num);
        _sendSMS(
        " $valueText",
        //"Hey !! This is just a Test Msg😁 \n \t \t \t --Gm_Abhishek💫 ",
        messageGroup);
        messageGroup.clear();
        }, icon: Icon(Icons.send)) ,
        hintText: "Enter your message here",
        border: InputBorder.none,
        ),
        textInputAction: TextInputAction.newline,
        textCapitalization: TextCapitalization.sentences,
        ),
                             ***/

       /*floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: selectingmode
            ? FloatingActionButton(
                onPressed: () {
                  var i=47;
                  _displayTextInputDialog(context,contacts[i].stu_num,result[i]);
                },
                backgroundColor: Color.fromRGBO(0, 0, 0, 1),
                child: Icon(
                  Icons.chat,
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
                elevation: 2.0,
              )
            : null,
*/
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
              onTap: () {
                setState(() {
                  if (selectingmode) {
                    contacts[index].selected = !contacts[index].selected;
                    log(contacts[index].selected.toString());
                  }
                });
              },
              child: CircleAvatar(
                  radius: 24,
                  child: Text(
                    '${index + 1}',
                    /**style: TextStyle(
                        fontSize: 50,
                        fontFamily: ,
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
                        ),**/
                    style: GoogleFonts.jacquesFrancoisShadow(
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
      ),
    );
  }
}
