import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:url_launcher/url_launcher.dart';
void main() async {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IT-A',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
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
  List<Contact>? contacts;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getContact();
  }
  void getContact() async {
    if (await FlutterContacts.requestPermission()) {
      // contacts = await FlutterContacts.getContacts(
      //  withProperties: true, withPhoto: true);
      contacts=[Contact.fromVCard('BEGIN:VCARD\n'
          'VERSION:4.0\n'
          'PHONE:9360524451\n'
          'FN:AAKASH S\n'
          'REV:1663433897219\n'), Contact.fromVCard('BEGIN:VCARD\n'
          'VERSION:4.0\n'
          'PHONE:9791567171\n'
          'FN:AARTHI D.J\n'
          'REV:1663433897219\n'
          'END:VCARD\n'), Contact.fromVCard('BEGIN:VCARD\n'
          'VERSION:4.0\n'
          'PHONE:8668090279\n'
          'FN:ABHIRAM M\n'
          'REV:1663433897219\n'
          'END:VCARD\n'),Contact.fromVCard('BEGIN:VCARD\n'
          'VERSION:4.0\n'
          'PHONE:8838916757\n'
          'FN:Gm_Abhishek \n'
          'REV:1663433897219\n'
          'END:VCARD\n'),Contact.fromVCard('BEGIN:VCARD\n'
          'VERSION:4.0\n'
          'PHONE:6385239935\n'
          'FN:ABHISHEK.P \n'
          'REV:1663433897220\n'
          'END:VCARD\n'),Contact.fromVCard('BEGIN:VCARD\n'
          'VERSION:4.0\n'
          'PHONE:9487693168\n'
          'FN:ABI C\n'
          'REV:1663433897220\n'
          'END:VCARD\n'), Contact.fromVCard('BEGIN:VCARD\n'
          'VERSION:4.0\n'
          'PHONE:8248817837\n'
          'FN:AKILESHKRISHNAN M\n'
          'REV:1663433897220\n'
          'END:VCARD\n'),  Contact.fromVCard('BEGIN:VCARD\n'
          'VERSION:4.0\n'
          'PHONE:7550370306\n'
          'FN:AKSHAYA D\n'
          'REV:1663433897220\n'
          'END:VCARD\n'),  Contact.fromVCard('BEGIN:VCARD\n'
          'VERSION:4.0\n'
          'PHONE:7397667022\n'
          'FN:ANILVIKASH P\n'
          'REV:1663433897220\n'
          'END:VCARD\n'), Contact.fromVCard('BEGIN:VCARD\n'
          'VERSION:4.0\n'
          'PHONE:9345648405\n'
          'FN:ARAVIND S\n'
          'REV:1663433897220\n'
          'END:VCARD\n'), Contact.fromVCard('BEGIN:VCARD\n'
          'VERSION:4.0\n'
          'PHONE:7358991516\n'
          'FN:ARCHANA V\n'
          'REV:1663433897220\n'
          'END:VCARD\n'), Contact.fromVCard('BEGIN:VCARD\n'
          'VERSION:4.0\n'
          'PHONE:9345854363\n'
          'FN:ASMITHA V\n'
          'REV:1663433897220\n'
          'END:VCARD\n'), Contact.fromVCard('BEGIN:VCARD\n'
          'VERSION:4.0\n'
          'PHONE:8940137740\n'
          'FN:ATHIF M\n'
          'REV:1663433897220\n'
          'END:VCARD\n'),Contact.fromVCard('BEGIN:VCARD\n'
          'VERSION:4.0\n'
          'PHONE:9080991487\n'
          'FN:AVINASH KUMAR R.B\n'
          'REV:1663433897220\n'
          'END:VCARD\n'), Contact.fromVCard('BEGIN:VCARD\n'
          'VERSION:4.0\n'
          'PHONE:9342475302\n'
          'FN:BALAJI V\n'
          'REV:1663433897220\n'
          'END:VCARD\n'), Contact.fromVCard('BEGIN:VCARD\n'
          'VERSION:4.0\n'
          'PHONE:9894143364\n'
          'FN:BARATH V\n'
          'REV:1663433897220\n'
          'END:VCARD\n') ,Contact.fromVCard('BEGIN:VCARD\n'
          'VERSION:4.0\n'
          'PHONE:9003550079\n'
          'FN:DHANISH G\n'
          'REV:1663433897220\n'
          'END:VCARD\n'), Contact.fromVCard('BEGIN:VCARD\n'
          'VERSION:4.0\n'
          'PHONE:9944027750\n'
          'FN:DHARSINE S\n'
          'REV:1663433897220\n'
          'END:VCARD\n'), Contact.fromVCard('BEGIN:VCARD\n'
          'VERSION:4.0\n'
          'PHONE:9080404129\n'
          'FN:DHIVYADHARSHNI R\n'
          'REV:1663433897220\n'
          'END:VCARD\n'), Contact.fromVCard('BEGIN:VCARD\n'
          'VERSION:4.0\n'
          'PHONE:9345750903\n'
          'FN:DHRISHA KRISHNA R\n'
          'REV:1663433897220\n'
          'END:VCARD\n'),Contact.fromVCard('BEGIN:VCARD\n'
          'VERSION:4.0\n'
          'PHONE:6385919879\n'
          'FN:GOVENDHIRAN G\n'
          'REV:1663433897220\n'
          'END:VCARD\n'), Contact.fromVCard('BEGIN:VCARD\n'
          'VERSION:4.0\n'
          'PHONE:9384405120\n'
          'FN:GOWTHAM S\n'
          'REV:1663433897221\n'
          'END:VCARD\n'), Contact.fromVCard('BEGIN:VCARD\n'
          'VERSION:4.0\n'
          'PHONE:9787476308\n'
          'FN:GUGAN S\n'
          'REV:1663433897221\n'
          'END:VCARD\n'), Contact.fromVCard('BEGIN:VCARD\n'
          'VERSION:4.0\n'
          'PHONE:9791801107\n'
          'FN: GUGAN VS\n'
          'REV:1663433897221\n'
          'END:VCARD\n'), Contact.fromVCard('BEGIN:VCARD\n'
          'VERSION:4.0\n'
          'PHONE:8807259800\n'
          'FN:GURUPRASATH S\n'
          'REV:1663433897221\n'
          'END:VCARD\n'), Contact.fromVCard('BEGIN:VCARD\n'
          'VERSION:4.0\n'
          'PHONE:6374781682\n'
          'FN:HARI VISHNU S\n'
          'REV:1663433897221\n'
          'END:VCARD\n'), Contact.fromVCard('BEGIN:VCARD\n'
          'VERSION:4.0\n'
          'PHONE:7358851402\n'
          'FN:HARIHARAN.A(27) \n'
          'REV:1663433897221\n'
          'END:VCARD\n'),Contact.fromVCard('BEGIN:VCARD\n'
          'VERSION:4.0\n'
          'PHONE:9361389411\n'
          'FN:HARIHARAN.M(28) \n'
          'REV:1663433897221\n'
          'END:VCARD\n'), Contact.fromVCard('BEGIN:VCARD\n'
          'VERSION:4.0\n'
          'PHONE:9500946676\n'
          'FN:HARIHARAN.M(29) \n'
          'REV:1663433897221\n'
          'END:VCARD\n'), Contact.fromVCard('BEGIN:VCARD\n'
          'VERSION:4.0\n'
          'PHONE:7358915848\n'
          'FN:HARI KRISHNAN A\n'
          'REV:1663433897221\n'
          'END:VCARD\n'), Contact.fromVCard('BEGIN:VCARD\n'
          'VERSION:4.0\n'
          'PHONE:9489184358\n'
          'FN:HARISH KUMAR A.V\n'
          'REV:1663433897221\n'
          'END:VCARD\n'), Contact.fromVCard('BEGIN:VCARD\n'
          'VERSION:4.0\n'
          'PHONE:9655596227\n'
          'FN:HARISH.M M\n'
          'REV:1663433897221\n'
          'END:VCARD\n'), Contact.fromVCard('BEGIN:VCARD\n'
          'VERSION:4.0\n'
          'PHONE:8825951726\n'
          'FN:HARISH RAGAVENDRA A\n'
          'REV:1663433897221\n'
          'END:VCARD\n'), Contact.fromVCard('BEGIN:VCARD\n'
          'VERSION:4.0\n'
          'PHONE:8072574482\n'
          'FN:HEMAHARSHINI K.J\n'
          'REV:1663433897221\n'
          'END:VCARD\n'), Contact.fromVCard('BEGIN:VCARD\n'
          'VERSION:4.0\n'
          'PHONE:9751969105\n'
          'FN:HEMALATHAA K\n'
          'REV:1663433897221\n'
          'END:VCARD\n'), Contact.fromVCard('BEGIN:VCARD\n'
          'VERSION:4.0\n'
          'PHONE:8056824328\n'
          'FN:IBRAHIM I\n'
          'REV:1663433897221\n'
          'END:VCARD\n'), Contact.fromVCard('BEGIN:VCARD\n'
          'VERSION:4.0\n'
          'PHONE:9342547039\n'
          'FN:INBASRI M\n'
          'REV:1663433897221\n'
          'END:VCARD\n'), Contact.fromVCard('BEGIN:VCARD\n'
          'VERSION:4.0\n'
          'PHONE:9087170230\n'
          'FN:INDHU K.S\n'
          'REV:1663433897221\n'
          'END:VCARD\n'), Contact.fromVCard('BEGIN:VCARD\n'
          'VERSION:4.0\n'
          'PHONE:9487423696\n'
          'FN:INDHULEGA S\n'
          'REV:1663433897221\n'
          'END:VCARD\n'), Contact.fromVCard('BEGIN:VCARD\n'
          'VERSION:4.0\n'
          'PHONE:9361656662\n'
          'FN:INIKA V\n'
          'REV:1663433897221\n'
          'END:VCARD\n'), Contact.fromVCard('BEGIN:VCARD\n'
          'VERSION:4.0\n'
          'PHONE:9489546178\n'
          'FN:JAMUNA A\n'
          'REV:1663433897221\n'
          'END:VCARD\n'), Contact.fromVCard('BEGIN:VCARD\n'
          'VERSION:4.0\n'
          'PHONE:7094695633\n'
          'FN:JEYAMUTHU G\n'
          'REV:1663433897222\n'
          'END:VCARD\n'), Contact.fromVCard('BEGIN:VCARD\n'
          'VERSION:4.0\n'
          'PHONE:9363292514\n'
          'FN:KABARTHINI K\n'
          'REV:1663433897222\n'
          'END:VCARD\n'), Contact.fromVCard('BEGIN:VCARD\n'
          'VERSION:4.0\n'
          'PHONE:6384842423\n'
          'FN:KABILA B.S\n'
          'REV:1663433897222\n'
          'END:VCARD\n'), Contact.fromVCard('BEGIN:VCARD\n'
          'VERSION:4.0\n'
          'PHONE:8111023481\n'
          'FN:KABILAN V\n'
          'REV:1663433897222\n'
          'END:VCARD\n'), Contact.fromVCard('BEGIN:VCARD\n'
          'VERSION:4.0\n'
          'PHONE:9080596570\n'
          'FN:KARTHICK V\n'
          'REV:1663433897222\n'
          'END:VCARD\n'), Contact.fromVCard('BEGIN:VCARD\n'
          'VERSION:4.0\n'
          'PHONE:9361616663\n'
          'FN:KATHYAYINI B\n'
          'REV:1663433897222\n'
          'END:VCARD\n'), Contact.fromVCard('BEGIN:VCARD\n'
          'VERSION:4.0\n'
          'PHONE:9585314473\n'
          'FN:KAVINKUMAR K\n'
          'REV:1663433897222\n'
          'END:VCARD\n'), Contact.fromVCard('BEGIN:VCARD\n'
          'VERSION:4.0\n'
          'PHONE:9363100955\n'
          'FN:KAVIN T\n'
          'REV:1663433897222\n'
          'END:VCARD\n'), Contact.fromVCard('BEGIN:VCARD\n'
          'VERSION:4.0\n'
          'PHONE:9495408971\n'
          'FN:KRITHIKA M\n'
          'REV:1663433897222\n'
          'END:VCARD\n'), Contact.fromVCard('BEGIN:VCARD\n'
          'VERSION:4.0\n'
          'PHONE:9894533060\n'
          'FN:LAVANYA S.B\n'
          'REV:1663433897222\n'
          'END:VCARD\n'), Contact.fromVCard('BEGIN:VCARD\n'
          'VERSION:4.0\n'
          'PHONE:9360230530\n'
          'FN:MAADHESH KUMAR S\n'
          'REV:1663433897222\n'
          'END:VCARD\n'), Contact.fromVCard('BEGIN:VCARD\n'
          'VERSION:4.0\n'
          'PHONE:8098313708\n'
          'FN:MADHAVAN V\n'
          'REV:1663433897222\n'
          'END:VCARD\n'), Contact.fromVCard('BEGIN:VCARD\n'
          'VERSION:4.0\n'
          'PHONE:9360246064\n'
          'FN:MAHESH BOOPATHI A,P\n'
          'REV:1663433897222\n'
          'END:VCARD\n'),Contact.fromVCard('BEGIN:VCARD\n'
          'VERSION:4.0\n'
          'PHONE:9994070522\n'
          'FN:MAHISA P\n'
          'REV:1663433897222\n'
          'END:VCARD\n'), Contact.fromVCard('BEGIN:VCARD\n'
          'VERSION:4.0\n'
          'PHONE:9025721893\n'
          'FN:MANOJ KUMAR N\n'
          'REV:1663433897222\n'
          'END:VCARD\n'), Contact.fromVCard('BEGIN:VCARD\n'
          'VERSION:4.0\n'
          'PHONE:9342292016\n'
          'FN:MIDHUN J\n'
          'REV:1663433897222\n'
          'END:VCARD\n'),Contact.fromVCard('BEGIN:VCARD\n'
          'VERSION:4.0\n'
          'PHONE:6374104177\n'
          'FN:MITHRAN J\n'
          'REV:1663433897222\n'
          'END:VCARD\n'),Contact.fromVCard('BEGIN:VCARD\n'
          'VERSION:4.0\n'
          'PHONE:9488137939\n'
          'FN:MOHAMED NOUFAL ANSARI T\n'
          'REV:1663433897222\n'
          'END:VCARD\n'), Contact.fromVCard('BEGIN:VCARD\n'
          'VERSION:4.0\n'
          'PHONE:9043414621\n'
          'FN:MOHANKUMAR M\n'
          'REV:1663433897222\n'
          'END:VCARD\n'), Contact.fromVCard('BEGIN:VCARD\n'
          'VERSION:4.0\n'
          'PHONE:6379710906\n'
          'FN:ARUL SANKARAN D\n'
          'REV:1663433897222\n'
          'END:VCARD\n'), Contact.fromVCard('BEGIN:VCARD\n'
          'VERSION:4.0\n'
          'PHONE:8248756701\n'
          'FN:DEEPAK N\n'
          'REV:1663433897222\n'
          'END:VCARD\n'), Contact.fromVCard('BEGIN:VCARD\n'
          'VERSION:4.0\n'
          'PHONE:9022003807\n'
          'FN:NADAR JENISON SHEKHAR\n'
          'REV:1663433897222\n'
          'END:VCARD\n')];
      // contacts = [c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,c31,c32,c33,c34,c35,c36,c37,c38,c39,c40,c41,c42,c43,c44,c45,c46,c47,c48,c49,c50,c51,c52,c53,c54,c55,c56,c57,c58,c59,c60,c61,c62,c63];
      // Contact? x = contacts?.elementAt(0);
      //print(x);
      print(contacts);
      setState(() {});
    }
  }
//  Widget _buildPopupDialog(BuildContext context) {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "II IT-A Contacts",
            style: TextStyle(
                color: Colors.black,
                fontFamily:'Booter-Zero-zero',
                fontSize: 28,
                fontWeight: FontWeight.w700 ),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: (contacts) == null
            ? Center(child: Text("Try again"))
            : ListView.builder(
                itemCount: contacts!.length,
                itemBuilder: (BuildContext context, int index) {
                  Uint8List? image = contacts![index].photo;
                  String num = (contacts![index].phones.isNotEmpty)?
                  /*(contacts![index].displayName)*/(contacts![index].phones.first.number): "--";
                  //String num = (contacts![index].phones.isNotEmpty) ? (contacts![index].emas.contains("727821tuit")?contacts![index].phones.first.number:""): "--";
                  return ListTile(
                      leading: (contacts![index].photo == null)
                          ? const CircleAvatar(child: Icon(Icons.person))
                          : CircleAvatar(backgroundImage: MemoryImage(image!)),

                      title: Text(
                          "${contacts![index].displayName}"
                        /*${contacts![index].name.last}*/),
                      //subtitle: Text("${contacts![index].name}"),
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) => new AlertDialog(
                        title: const Text('Parent or Student'),
                        //contentTextStyle: color ,
                        content: new Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        //children: <Widget>[
                        //Text("Hello"),
                        children: <Widget>[PopupMenuButton<int>(
                        itemBuilder: (context) => [
                        // popupmenu item 1
                        PopupMenuItem(
                        value: 1,
                        // row has two child icon and text.
                        child: Row(
                        children: [
                        Icon(Icons.account_circle_outlined),

                        SizedBox(
                        // sized box with width 10
                        width: 10,
                        ),
                        Text("parent"),
                        ],
                        ),
                        ),
                        // popupmenu item 2
                        PopupMenuItem(
                        value: 2,
                        // row has two child icon and text
                        child: Row(
                        children: [
                        Icon(Icons.accessibility),
                        SizedBox(
                        // sized box with width 10
                        width: 10,
                        ),
                        Text("Student")
                        ],
                        ),
                        ),
                        ],
                        offset: Offset(0, 100),
                        color: Colors.grey,
                        elevation: 2,
                        ),
                        ],
                        //],
                        ),

                        ),
                        );
                      //  if (contacts![index].phones.isNotEmpty) {
                        //  launch('tel: ${num}');
                      //  }
                      });
                },
              ));
  }
}
