import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:url_launcher/url_launcher.dart';
//import 'package:contacts_service/contacts_service.dart' as gm;

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
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

    Contact c1= Contact.fromVCard('BEGIN:VCARD\n'
        'VERSION:4.0\n'
        'NAme:AAKASH\n'
        'TITLE:727821TUIT001\n'
        'BDAY:29.03.2003\n'
        'COMPANY:SKCT\n'
        'PHONE:9360524451\n'
        'LAST:S\n'
        'EMAIL:727821tuit001@skct.edu.in\n'
        'FN:AAKASH S\n'
        'REV:1663433897219\n'
    );
    Contact c2 = Contact.fromVCard('BEGIN:VCARD\n'
        'VERSION:4.0\n'
        'FIRST:AARTHI\n'
        'TITLE:727821TUIT002\n'
        'BDAY:30.07.2003\n'
        'COMPANY:SKCT\n'
        'PHONE:9791567171\n'
        'LAST:D.J\n'
        'EMAIL:727821tuit002@skct.edu.in\n'
        'FN:AARTHI D.J\n'
        'REV:1663433897219\n'
        'END:VCARD\n'
    );
    Contact c3 = Contact.fromVCard('BEGIN:VCARD\n'
        'VERSION:4.0\n'
        'FIRST:ABHIRAM\n'
        'TITLE:727821TUIT003\n'
        'BDAY:31.03.2004\n'
        'COMPANY:SKCT\n'
        'PHONE:8668090279\n'
        'LAST:M\n'
        'EMAIL:727821tuit003@skct.edu.in\n'
        'FN:ABHIRAM M\n'
        'REV:1663433897219\n'
        'END:VCARD\n'
    );
    Contact c4 = Contact.fromVCard('BEGIN:VCARD\n'
        'VERSION:4.0\n'
        'FIRST:Gm_Abhishek\n'
        'TITLE:727821TUIT004\n'
        'BDAY:19.03.2004\n'
        'COMPANY:SKCT\n'
        'PHONE:8838916757\n'
        'LAST:G\n'
        'EMAIL:727821tuit004@skct.edu.in\n'
        'FN:Gm_Abhishek G\n'
        'REV:1663433897219\n'
        'END:VCARD\n'
    );
    Contact c5 = Contact.fromVCard('BEGIN:VCARD\n'
        'VERSION:4.0\n'
        'FIRST:ABHISHEK.P\n'
        'TITLE:727821TUIT005\n'
        'BDAY:16.09.2003\n'
        'COMPANY:SKCT\n'
        'PHONE:6385239935\n'
        'LAST:P\n'
        'EMAIL:727821tuit005@skct.edu.in\n'
        'FN:ABHISHEK.P P\n'
        'REV:1663433897220\n'
        'END:VCARD\n'
    );
    Contact c6 = Contact.fromVCard('BEGIN:VCARD\n'
        'VERSION:4.0\n'
        'FIRST:ABI\n'
        'TITLE:727821TUIT006\n'
        'BDAY:13.11.2003\n'
        'COMPANY:SKCT\n'
        'PHONE:9487693168\n'
        'LAST:C\n'
        'EMAIL:727821tuit006@skct.edu.in\n'
        'FN:ABI C\n'
        'REV:1663433897220\n'
        'END:VCARD\n'
    );
    Contact c7 = Contact.fromVCard('BEGIN:VCARD\n'
        'VERSION:4.0\n'
        'firstName:AKILESHKRISHNAN\n'
        'TITLE:727821TUIT007\n'
        'BDAY:31.08.2003\n'
        'COMPANY:SKCT\n'
        'PHONE:8248817837\n'
        'LAST:M\n'
        'EMAIL:727821tuit007@skct.edu.in\n'
        'FN:AKILESHKRISHNAN M\n'
        'REV:1663433897220\n'
        'END:VCARD\n'
    );
    Contact c8 = Contact.fromVCard('BEGIN:VCARD\n'
        'VERSION:4.0\n'
        'FIRST:AKSHAYA\n'
        'TITLE:727821TUIT008\n'
        'BDAY:07.08.2003\n'
        'COMPANY:SKCT\n'
        'PHONE:7550370306\n'
        'LAST:D\n'
        'EMAIL:727821tuit008@skct.edu.in\n'
        'FN:AKSHAYA D\n'
        'REV:1663433897220\n'
        'END:VCARD\n'
    );
    Contact c9 = Contact.fromVCard('BEGIN:VCARD\n'
        'VERSION:4.0\n'
        'FIRST:ANILVIKASH\n'
        'TITLE:727821TUIT009\n'
        'BDAY:03.01.2004\n'
        'COMPANY:SKCT\n'
        'PHONE:7397667022\n'
        'LAST:P\n'
        'EMAIL:727821tuit009@skct.edu.in\n'
        'FN:ANILVIKASH P\n'
        'REV:1663433897220\n'
        'END:VCARD\n'
    );
    Contact c10 = Contact.fromVCard('BEGIN:VCARD\n'
        'VERSION:4.0\n'
        'FIRST:ARAVIND\n'
        'TITLE:727821TUIT010\n'
        'BDAY:23.12.2003\n'
        'COMPANY:SKCT\n'
        'PHONE:9345648405\n'
        'LAST:S\n'
        'EMAIL:727821tuit010@skct.edu.in\n'
        'FN:ARAVIND S\n'
        'REV:1663433897220\n'
        'END:VCARD\n'
    );
    Contact c11 = Contact.fromVCard('BEGIN:VCARD\n'
        'VERSION:4.0\n'
        'FIRST:ARCHANA\n'
        'TITLE:727821TUIT011\n'
        'BDAY:11.08.2004\n'
        'COMPANY:SKCT\n'
        'PHONE:7358991516\n'
        'LAST:V\n'
        'EMAIL:727821tuit011@skct.edu.in\n'
        'FN:ARCHANA V\n'
        'REV:1663433897220\n'
        'END:VCARD\n'
    );
    Contact c12 = Contact.fromVCard('BEGIN:VCARD\n'
        'VERSION:4.0\n'
        'FIRST:ASMITHA\n'
        'TITLE:727821TUIT012\n'
        'BDAY:14.10.2003\n'
        'COMPANY:SKCT\n'
        'PHONE:9345854363\n'
        'LAST:V\n'
        'EMAIL:727821tuit012@skct.edu.in\n'
        'FN:ASMITHA V\n'
        'REV:1663433897220\n'
        'END:VCARD\n'
    );
    Contact c13 = Contact.fromVCard('BEGIN:VCARD\n'
        'VERSION:4.0\n'
        'FIRST:ATHIF\n'
        'TITLE:727821TUIT013\n'
        'BDAY:25.04.2004\n'
        'COMPANY:SKCT\n'
        'PHONE:8940137740\n'
        'LAST:M\n'
        'EMAIL:727821tuit013@skct.edu.in\n'
        'FN:ATHIF M\n'
        'REV:1663433897220\n'
        'END:VCARD\n'
    );
    Contact c14 = Contact.fromVCard('BEGIN:VCARD\n'
        'VERSION:4.0\n'
        'FIRST:AVINASH KUMAR\n'
        'TITLE:727821TUIT014\n'
        'BDAY:14.10.2003\n'
        'COMPANY:SKCT\n'
        'PHONE:9080991487\n'
        'LAST:R.B\n'
        'EMAIL:727821tuit014@skct.edu.in\n'
        'FN:AVINASH KUMAR R.B\n'
        'REV:1663433897220\n'
        'END:VCARD\n'
    );
    Contact c15= Contact.fromVCard('BEGIN:VCARD\n'
        'VERSION:4.0\n'
        'FIRST:BALAJI\n'
        'TITLE:727821TUIT015\n'
        'BDAY:22.06.2004\n'
        'COMPANY:SKCT\n'
        'PHONE:9342475302\n'
        'LAST:V\n'
        'EMAIL:727821tuit015@skct.edu.in\n'
        'FN:BALAJI V\n'
        'REV:1663433897220\n'
        'END:VCARD\n'
    );
    Contact c16= Contact.fromVCard('BEGIN:VCARD\n'
        'VERSION:4.0\n'
        'FIRST:BARATH\n'
        'TITLE:727821TUIT016\n'
        'BDAY:21.01.2004\n'
        'COMPANY:SKCT\n'
        'PHONE:9894143364\n'
        'LAST:V\n'
        'EMAIL:727821tuit016@skct.edu.in\n'
        'FN:BARATH V\n'
        'REV:1663433897220\n'
        'END:VCARD\n'
    );
    Contact c17= Contact.fromVCard('BEGIN:VCARD\n'
        'VERSION:4.0\n'
        'FIRST:DHANISH\n'
        'TITLE:727821TUIT017\n'
        'BDAY:05.08.2003\n'
        'COMPANY:SKCT\n'
        'PHONE:9003550079\n'
        'LAST:G\n'
        'EMAIL:727821tuit017@skct.edu.in\n'
        'FN:DHANISH G\n'
        'REV:1663433897220\n'
        'END:VCARD\n'
    );
    Contact c18= Contact.fromVCard('BEGIN:VCARD\n'
        'VERSION:4.0\n'
        'FIRST:DHARSINE\n'
        'TITLE:727821TUIT018\n'
        'BDAY:08.09.2002\n'
        'COMPANY:SKCT\n'
        'PHONE:9944027750\n'
        'LAST:S\n'
        'EMAIL:727821tuit018@skct.edu.in\n'
        'FN:DHARSINE S\n'
        'REV:1663433897220\n'
        'END:VCARD\n'
    );
    Contact c19=Contact.fromVCard('BEGIN:VCARD\n'
        'VERSION:4.0\n'
        'FIRST:DHIVYADHARSHNI\n'
        'TITLE:727821TUIT019\n'
        'BDAY:29.09.2003\n'
        'COMPANY:SKCT\n'
        'PHONE:9080404129\n'
        'LAST:R\n'
        'EMAIL:727821tuit019@skct.edu.in\n'
        'FN:DHIVYADHARSHNI R\n'
        'REV:1663433897220\n'
        'END:VCARD\n'
    );
    Contact c20= Contact.fromVCard('BEGIN:VCARD\n'
        'VERSION:4.0\n'
        'FIRST:DHRISHA KRISHNA\n'
        'TITLE:727821TUIT020\n'
        'BDAY:24.01.2004\n'
        'COMPANY:SKCT\n'
        'PHONE:9345750903\n'
        'LAST:R\n'
        'EMAIL:727821tuit020@skct.edu.in\n'
        'FN:DHRISHA KRISHNA R\n'
        'REV:1663433897220\n'
        'END:VCARD\n'
    );
    Contact c21 = Contact.fromVCard('BEGIN:VCARD\n'
        'VERSION:4.0\n'
        'FIRST:GOVENDHIRAN\n'
        'TITLE:727821TUIT021\n'
        'BDAY:07.06.2004\n'
        'COMPANY:SKCT\n'
        'PHONE:6385919879\n'
        'LAST:G\n'
        'EMAIL:727821tuit021@skct.edu.in\n'
        'FN:GOVENDHIRAN G\n'
        'REV:1663433897220\n'
        'END:VCARD\n'
    );
    Contact c22 = Contact.fromVCard('BEGIN:VCARD\n'
        'VERSION:4.0\n'
        'FIRST:GOWTHAM\n'
        'TITLE:727821TUIT022\n'
        'BDAY:30.01.2004\n'
        'COMPANY:SKCT\n'
        'PHONE:9384405120\n'
        'LAST:S\n'
        'EMAIL:727821tuit022@skct.edu.in\n'
        'FN:GOWTHAM S\n'
        'REV:1663433897221\n'
        'END:VCARD\n'
    );
    Contact c23 = Contact.fromVCard('BEGIN:VCARD\n'
        'VERSION:4.0\n'
        'FIRST:GUGAN\n'
        'TITLE:727821TUIT023\n'
        'BDAY:27.12.2003\n'
        'COMPANY:SKCT\n'
        'PHONE:9787476308\n'
        'LAST:S\n'
        'EMAIL:727821tuit023@skct.edu.in\n'
        'FN:GUGAN S\n'
        'REV:1663433897221\n'
        'END:VCARD\n'
    );
    Contact c24 = Contact.fromVCard('BEGIN:VCARD\n'
        'VERSION:4.0\n'
        'FIRST: GUGAN\n'
        'TITLE:727821TUIT024\n'
        'BDAY:08.06.2004\n'
        'COMPANY:SKCT\n'
        'PHONE:9791801107\n'
        'LAST:VS\n'
        'EMAIL:727821tuit024@skct.edu.in\n'
        'FN: GUGAN VS\n'
        'REV:1663433897221\n'
        'END:VCARD\n'
    );
    Contact c25 = Contact.fromVCard('BEGIN:VCARD\n'
        'VERSION:4.0\n'
        'FIRST:GURUPRASATH\n'
        'TITLE:727821TUIT025\n'
        'BDAY:06.10.2003\n'
        'COMPANY:SKCT\n'
        'PHONE:8807259800\n'
        'LAST:S\n'
        'EMAIL:727821tuit025@skct.edu.in\n'
        'FN:GURUPRASATH S\n'
        'REV:1663433897221\n'
        'END:VCARD\n'
    );
    Contact c26 = Contact.fromVCard('BEGIN:VCARD\n'
        'VERSION:4.0\n'
        'FIRST:HARI VISHNU\n'
        'TITLE:727821TUIT026\n'
        'BDAY:21.08.2004\n'
        'COMPANY:SKCT\n'
        'PHONE:6374781682\n'
        'LAST:S\n'
        'EMAIL:727821tuit026@skct.edu.in\n'
        'FN:HARI VISHNU S\n'
        'REV:1663433897221\n'
        'END:VCARD\n'
    );
    Contact c27 = Contact.fromVCard('BEGIN:VCARD\n'
        'VERSION:4.0\n'
        'FIRST:HARIHARAN.A(27)\n'
        'TITLE:727821TUIT027\n'
        'BDAY:14.02.2004\n'
        'COMPANY:SKCT\n'
        'PHONE:7358851402\n'
        'LAST:A\n'
        'EMAIL:727821tuit027@skct.edu.in\n'
        'FN:HARIHARAN.A(27) A\n'
        'REV:1663433897221\n'
        'END:VCARD\n'
    );
    Contact c28 = Contact.fromVCard('BEGIN:VCARD\n'
        'VERSION:4.0\n'
        'FIRST:HARIHARAN.M(28)\n'
        'TITLE:727821TUIT028\n'
        'BDAY:05.02.2004\n'
        'COMPANY:SKCT\n'
        'PHONE:9361389411\n'
        'LAST:M\n'
        'EMAIL:727821tuit028@skct.edu.in\n'
        'FN:HARIHARAN.M(28) M\n'
        'REV:1663433897221\n'
        'END:VCARD\n'
    );
    Contact c29 = Contact.fromVCard('BEGIN:VCARD\n'
        'VERSION:4.0\n'
        'FIRST:HARIHARAN.M(29)\n'
        'TITLE:727821TUIT029\n'
        'BDAY:11.02.2004\n'
        'COMPANY:SKCT\n'
        'PHONE:9500946676\n'
        'LAST:M\n'
        'EMAIL:727821tuit029@skct.edu.in\n'
        'FN:HARIHARAN.M(29) M\n'
        'REV:1663433897221\n'
        'END:VCARD\n'
    );
    Contact c30 = Contact.fromVCard('BEGIN:VCARD\n'
        'VERSION:4.0\n'
        'FIRST:HARI KRISHNAN\n'
        'TITLE:727821TUIT030\n'
        'BDAY:29.09.2003\n'
        'COMPANY:SKCT\n'
        'PHONE:7358915848\n'
        'LAST:A\n'
        'EMAIL:727821tuit030@skct.edu.in\n'
        'FN:HARI KRISHNAN A\n'
        'REV:1663433897221\n'
        'END:VCARD\n'
    );
    Contact c31 = Contact.fromVCard('BEGIN:VCARD\n'
        'VERSION:4.0\n'
        'FIRST:HARISH KUMAR\n'
        'TITLE:727821TUIT031\n'
        'BDAY:15.05.2003\n'
        'COMPANY:SKCT\n'
        'PHONE:9489184358\n'
        'LAST:A.V\n'
        'EMAIL:727821tuti031@skct.edu.in\n'
        'FN:HARISH KUMAR A.V\n'
        'REV:1663433897221\n'
        'END:VCARD\n'
    );
    Contact c32= Contact.fromVCard('BEGIN:VCARD\n'
        'VERSION:4.0\n'
        'FIRST:HARISH.M\n'
        'TITLE:727821TUIT032\n'
        'BDAY:23.05.2004\n'
        'COMPANY:SKCT\n'
        'PHONE:9655596227\n'
        'LAST:M\n'
        'EMAIL:727821tuit032@skct.edu.in\n'
        'FN:HARISH.M M\n'
        'REV:1663433897221\n'
        'END:VCARD\n'
    );
    Contact c33= Contact.fromVCard('BEGIN:VCARD\n'
        'VERSION:4.0\n'
        'FIRST:HARISH RAGAVENDRA\n'
        'TITLE:727821TUIT033\n'
        'BDAY:24.02.2004\n'
        'COMPANY:SKCT\n'
        'PHONE:8825951726\n'
        'LAST:A\n'
        'EMAIL:727821tuit033@skct.edu.in\n'
        'FN:HARISH RAGAVENDRA A\n'
        'REV:1663433897221\n'
        'END:VCARD\n'
    );
    Contact c34= Contact.fromVCard('BEGIN:VCARD\n'
        'VERSION:4.0\n'
        'FIRST:HEMAHARSHINI\n'
        'TITLE:727821TUIT035\n'
        'BDAY:15.11.2003\n'
        'COMPANY:SKCT\n'
        'PHONE:8072574482\n'
        'LAST:K.J\n'
        'EMAIL:727821tuit035@skct.edu.in\n'
        'FN:HEMAHARSHINI K.J\n'
        'REV:1663433897221\n'
        'END:VCARD\n'
    );
    Contact c35= Contact.fromVCard('BEGIN:VCARD\n'
        'VERSION:4.0\n'
        'FIRST:HEMALATHAA\n'
        'TITLE:727821TUIT036\n'
        'BDAY:05.06.2003\n'
        'COMPANY:SKCT\n'
        'PHONE:9751969105\n'
        'LAST:K\n'
        'EMAIL:727821tuit036@skct.edu.in\n'
        'FN:HEMALATHAA K\n'
        'REV:1663433897221\n'
        'END:VCARD\n'
    );
    Contact c36= Contact.fromVCard('BEGIN:VCARD\n'
        'VERSION:4.0\n'
        'FIRST:IBRAHIM\n'
        'TITLE:727821TUIT037\n'
        'BDAY:07.07.2004\n'
        'COMPANY:SKCT\n'
        'PHONE:8056824328\n'
        'LAST:I\n'
        'EMAIL:727821tuit037@skct.edu.in\n'
        'FN:IBRAHIM I\n'
        'REV:1663433897221\n'
        'END:VCARD\n'
    );
    Contact c37= Contact.fromVCard('BEGIN:VCARD\n'
        'VERSION:4.0\n'
        'FIRST:INBASRI\n'
        'TITLE:727821TUIT038\n'
        'BDAY:26.06.2003\n'
        'COMPANY:SKCT\n'
        'PHONE:9342547039\n'
        'LAST:M\n'
        'EMAIL:727821tuit038@skct.edu.in\n'
        'FN:INBASRI M\n'
        'REV:1663433897221\n'
        'END:VCARD\n'
    );
    Contact c38= Contact.fromVCard('BEGIN:VCARD\n'
        'VERSION:4.0\n'
        'FIRST:INDHU\n'
        'TITLE:727821TUIT039\n'
        'BDAY:17.05.2003\n'
        'COMPANY:SKCT\n'
        'PHONE:9087170230\n'
        'LAST:K.S\n'
        'EMAIL:727821tuit039@skct.edu.in\n'
        'FN:INDHU K.S\n'
        'REV:1663433897221\n'
        'END:VCARD\n'
    );
    Contact c39= Contact.fromVCard('BEGIN:VCARD\n'
        'VERSION:4.0\n'
        'FIRST:INDHULEGA\n'
        'TITLE:727821TUIT040\n'
        'BDAY:19.01.2004\n'
        'COMPANY:SKCT\n'
        'PHONE:9487423696\n'
        'LAST:S\n'
        'EMAIL:727821tuit040@skct.edu.in\n'
        'FN:INDHULEGA S\n'
        'REV:1663433897221\n'
        'END:VCARD\n'
    );
    Contact c40= Contact.fromVCard('BEGIN:VCARD\n'
        'VERSION:4.0\n'
        'FIRST:INIKA\n'
        'TITLE:727821TUIT041\n'
        'BDAY:07.11.2002\n'
        'COMPANY:SKCT\n'
        'PHONE:9361656662\n'
        'LAST:V\n'
        'EMAIL:727821tuit041@skct.edu.in\n'
        'FN:INIKA V\n'
        'REV:1663433897221\n'
        'END:VCARD\n'
    );
    Contact c41= Contact.fromVCard('BEGIN:VCARD\n'
        'VERSION:4.0\n'
        'FIRST:JAMUNA\n'
        'TITLE:727821TUIT042\n'
        'BDAY:17.05.2003\n'
        'COMPANY:SKCT\n'
        'PHONE:9489546178\n'
        'LAST:A\n'
        'EMAIL:727821tuit042@skct.edu.in\n'
        'FN:JAMUNA A\n'
        'REV:1663433897221\n'
        'END:VCARD\n'
    );
    Contact c42= Contact.fromVCard('BEGIN:VCARD\n'
        'VERSION:4.0\n'
        'FIRST:JEYAMUTHU\n'
        'TITLE:727821TUIT043\n'
        'BDAY:12.06.2004\n'
        'COMPANY:SKCT\n'
        'PHONE:7094695633\n'
        'LAST:G\n'
        'EMAIL:727821tuit043@skct.edu.in\n'
        'FN:JEYAMUTHU G\n'
        'REV:1663433897222\n'
        'END:VCARD\n'
    );
    Contact c43= Contact.fromVCard('BEGIN:VCARD\n'
        'VERSION:4.0\n'
        'FIRST:KABARTHINI\n'
        'TITLE:727821TUIT044\n'
        'BDAY:19.02.2004\n'
        'COMPANY:SKCT\n'
        'PHONE:9363292514\n'
        'LAST:K\n'
        'EMAIL:727821tuit044@skct.edu.in\n'
        'FN:KABARTHINI K\n'
        'REV:1663433897222\n'
        'END:VCARD\n'
    );
    Contact c44= Contact.fromVCard('BEGIN:VCARD\n'
        'VERSION:4.0\n'
        'FIRST:KABILA\n'
        'TITLE:727821TUIT045\n'
        'BDAY:24.09.2003\n'
        'COMPANY:SKCT\n'
        'PHONE:6384842423\n'
        'LAST:B.S\n'
        'EMAIL:727821tuti045@skct.edu.in\n'
        'FN:KABILA B.S\n'
        'REV:1663433897222\n'
        'END:VCARD\n'
    );
    Contact c45= Contact.fromVCard('BEGIN:VCARD\n'
        'VERSION:4.0\n'
        'FIRST:KABILAN\n'
        'TITLE:727821TUIT046\n'
        'BDAY:22.08.2003\n'
        'COMPANY:SKCT\n'
        'PHONE:8111023481\n'
        'LAST:V\n'
        'EMAIL:727821tuit046@skct.edu.in\n'
        'FN:KABILAN V\n'
        'REV:1663433897222\n'
        'END:VCARD\n'
    ); /*
    Contact c46= Contact.fromVCard();
    Contact c47= Contact.fromVCard();
    Contact c48= Contact.fromVCard();
    Contact c49= Contact.fromVCard();
    Contact c50= Contact.fromVCard();
    Contact c51= Contact.fromVCard();
    Contact c52 = Contact.fromVCard();
    Contact c53= Contact.fromVCard();
    Contact c54= Contact.fromVCard();
    Contact c55= Contact.fromVCard();
    Contact c56= Contact.fromVCard();
    Contact c57= Contact.fromVCard();
    Contact c58= Contact.fromVCard();
    Contact c59= Contact.fromVCard();
    Contact c60= Contact.fromVCard();
    Contact c61= Contact.fromVCard();
    Contact c62= Contact.fromVCard();
    Contact c63= Contact.fromVCard();*/
    contacts=[c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,c31,c32,c33,c34,c35,c36,c37,c38,c39,c40,c41,c42,c43,c44,c45/*,c46,c47,c48,c49,c50,c51,c52,c53,c54,c55,c56,c57,c58,c59,c60,c61,c62,c63*/];
       print(contacts);
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Contacts App",
            style: TextStyle(color: Colors.blue),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: (contacts) == null
            ? Center(child: CircularProgressIndicator())
            : ListView.builder(
          itemCount: contacts!.length,
          itemBuilder: (BuildContext context, int index) {
            Uint8List? image = contacts![index].photo;
            String num = (contacts![index].phones.isNotEmpty) ? (contacts![index].phones.first.number) : "--";
            //String num = (contacts![index].phones.isNotEmpty) ? (contacts![index].emails.contains("727821tuit")?contacts![index].phones.first.number:""): "--";
            return ListTile(
                leading: (contacts![index].photo == null)
                    ? const CircleAvatar(child: Icon(Icons.person))
                    : CircleAvatar(backgroundImage: MemoryImage(image!)),
                title: Text(
                    "${contacts![index].name.first} ${contacts![index].name.last}"),
                subtitle: Text(num),
                onTap: () {
                  if (contacts![index].phones.isNotEmpty) {
                    launch('tel: ${num}');
                  }
                });
          },
        ));
  }
}