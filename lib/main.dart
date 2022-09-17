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


   contacts = await FlutterContacts.getContacts(
      withProperties: true, withPhoto: true);

   /*
      Contact importedContact = Contact.fromVCard(
          'BEGIN:VCARD\n'
              'VERSION:3.0\n'
              'N:;Joe;;;\n'
              'TEL;TYPE=HOME:123456\n'
              'END:VCARD');
    )
      contacts =*/
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