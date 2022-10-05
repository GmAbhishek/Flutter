import 'package:flutter_contacts/flutter_contacts.dart';

List<Contact>? contacts = [
  Contact.fromVCard('BEGIN:VCARD\n'
      'FN:AAKASH S\n'
      'PHONE:9360524451\n'
      'N:;U.SAKTHIVEL ;9442350553\n'
      'END:VCARD'),
  Contact.fromVCard('BEGIN:VCARD\n'
      'FN:AARTHI D.J\n'
      'PHONE:9791567171\n'
      'N:;S.Doraisamy ;9842895355\n'
      'END:VCARD'),
  Contact.fromVCard('BEGIN:VCARD\n'
      'FN:ABHIRAM M\n'
      'PHONE:8668090279\n'
      'N:;Manikam ;7598293129\n'
      'END:VCARD'),
  Contact.fromVCard('BEGIN:VCARD\n'
      'FN:Gm_Abhishek \n'
      'PHONE:8838916757\n'
      'N:;N.Ganesa Moorthy ;9842177179\n'
      'END:VCARD'),
  Contact.fromVCard('BEGIN:VCARD\n'
      'FN:ABHISHEK.P \n'
      'PHONE:6385239935\n'
      'N:;Palanisamy K K ;9750039935\n'
      'END:VCARD'),
  Contact.fromVCard('BEGIN:VCARD\n'
      'FN:ABI C\n'
      'PHONE:9487693168\n'
      'N:;S.Chellappa ;9095048768\n'
      'END:VCARD'),
  Contact.fromVCard('BEGIN:VCARD\n'
      'FN:AKILESHKRISHNAN M\n'
      'PHONE:8248817837\n'
      'N:;K.Mayilsamy ;9787206858\n'
      'END:VCARD'),
  Contact.fromVCard('BEGIN:VCARD\n'
      'FN:AKSHAYA D\n'
      'PHONE:7550370306\n'
      'N:;Devaraj. P ;9080280015\n'
      'END:VCARD'),
  Contact.fromVCard('BEGIN:VCARD\n'
      'FN:ANILVIKASH P\n'
      'PHONE:7397667022\n'
      'N:;PANNEERASELVAM M ;9842677022\n'
      'END:VCARD'),
  Contact.fromVCard('BEGIN:VCARD\n'
      'FN:ARAVIND S\n'
      'PHONE:9345648405\n'
      'N:;SABAPATHY ;9245845275\n'
      'END:VCARD'),
  Contact.fromVCard('BEGIN:VCARD\n'
      'FN:ARCHANA V\n'
      'PHONE:7358991516\n'
      'N:;Velmurugan.M ;9790692508\n'
      'END:VCARD'),
  Contact.fromVCard('BEGIN:VCARD\n'
      'FN:ASMITHA V\n'
      'PHONE:9345854363\n'
      'N:;Vanjiyappan N ;9994311840\n'
      'END:VCARD'),
  Contact.fromVCard('BEGIN:VCARD\n'
      'FN:ATHIF M\n'
      'PHONE:8940137740\n'
      'N:;MOHAMED RAFEEK A ;8870880919\n'
      'END:VCARD'),
  Contact.fromVCard('BEGIN:VCARD\n'
      'FN:AVINASH KUMAR R.B\n'
      'PHONE:9080991487\n'
      'N:;K.Ravichandran ;9442261038\n'
      'END:VCARD'),
  Contact.fromVCard('BEGIN:VCARD\n'
      'FN:BALAJI V\n'
      'PHONE:9342475302\n'
      'N:;Viswalingham S ;9488453571\n'
      'END:VCARD'),
  Contact.fromVCard('BEGIN:VCARD\n'
      'FN:BARATH V\n'
      'PHONE:9894143364\n'
      'N:;Venkatesh ;9791944433\n'
      'END:VCARD'),
  Contact.fromVCard('BEGIN:VCARD\n'
      'FN:DHANISH G\n'
      'PHONE:9003550079\n'
      'N:;Gopi A ;6381715501\n'
      'END:VCARD'),
  Contact.fromVCard('BEGIN:VCARD\n'
      'FN:DHARSINE S\n'
      'PHONE:9944027750\n'
      'N:;Saseekumar ;9944688750\n'
      'END:VCARD'),
  Contact.fromVCard('BEGIN:VCARD\n'
      'FN:DHIVYADHARSHNI R\n'
      'PHONE:9080404129\n'
      'N:;RAVICHANDRAN S ;9962492503\n'
      'END:VCARD'),
  Contact.fromVCard('BEGIN:VCARD\n'
      'FN:DHRISHA KRISHNA R\n'
      'PHONE:9345750903\n'
      'N:;Radha Krishnan S ;9789751316\n'
      'END:VCARD'),
  Contact.fromVCard('BEGIN:VCARD\n'
      'FN:GOVENDHIRAN G\n'
      'PHONE:6385919879\n'
      'N:;K.Govindhan ;9788919879\n'
      'END:VCARD'),
  Contact.fromVCard('BEGIN:VCARD\n'
      'FN:GOWTHAM S\n'
      'PHONE:9384405120\n'
      'N:;S.V.Sreidhar ;9787291072\n'
      'END:VCARD'),
  Contact.fromVCard('BEGIN:VCARD\n'
      'FN:GUGAN S\n'
      'PHONE:9787476308\n'
      'N:;S.Suresh ;9443912482\n'
      'END:VCARD'),
  Contact.fromVCard('BEGIN:VCARD\n'
      'FN: GUGAN VS\n'
      'PHONE:9791801107\n'
      'N:;V.Sivakumar ;7094318694\n'
      'END:VCARD'),
  Contact.fromVCard('BEGIN:VCARD\n'
      'FN:GURUPRASATH S\n'
      'PHONE:8807259800\n'
      'N:;P.V.SELVARAJ ;9940940565\n'
      'END:VCARD'),
  Contact.fromVCard('BEGIN:VCARD\n'
      'FN:HARI VISHNU S\n'
      'PHONE:6374781682\n'
      'N:;srinivasan.v ;9003614373\n'
      'END:VCARD'),
  Contact.fromVCard('BEGIN:VCARD\n'
      'FN:HARIHARAN.A\n'
      'PHONE:7358851402\n'
      'N:;Adaikkappan O ;9443175104\n'
      'END:VCARD'),
  Contact.fromVCard('BEGIN:VCARD\n'
      'FN:HARIHARAN.M\n'
      'PHONE:9361389411\n'
      'N:;Murugesan ;9786660178\n'
      'END:VCARD'),
  Contact.fromVCard('BEGIN:VCARD\n'
      'FN:HARIHARAN.M \n'
      'PHONE:9500946676\n'
      'N:;Mohanraja.A ;9344822280\n'
      'END:VCARD'),
  Contact.fromVCard('BEGIN:VCARD\n'
      'FN:HARI KRISHNAN A\n'
      'PHONE:7358915848\n'
      'N:;Aruchsamy P ;9751055848\n'
      'END:VCARD'),
  Contact.fromVCard('BEGIN:VCARD\n'
      'FN:HARISH KUMAR A.V\n'
      'PHONE:9489184358\n'
      'N:;Authimoolaperumal N ;9489154358\n'
      'END:VCARD'),
  Contact.fromVCard('BEGIN:VCARD\n'
      'FN:HARISH.M M\n'
      'PHONE:9655596227\n'
      'N:;Manjunathan.M ;9843432526\n'
      'END:VCARD'),
  Contact.fromVCard('BEGIN:VCARD\n'
      'FN:HARISH RAGAVENDRA A\n'
      'PHONE:8825951726\n'
      'N:;Ayyappan K ;9894473940\n'
      'END:VCARD'),
  Contact.fromVCard('BEGIN:VCARD\n'
      'FN:HARSHINI S\n'
      'PHONE:8667470164\n'
      'N:;A sridhar ;9843542224\n'
      'END:VCARD'),
  Contact.fromVCard('BEGIN:VCARD\n'
      'FN:HEMAHARSHINI K.J\n'
      'PHONE:8072574482\n'
      'N:;Jaganathan.P ;9790484237\n'
      'END:VCARD'),
  Contact.fromVCard('BEGIN:VCARD\n'
      'FN:HEMALATHAA K\n'
      'PHONE:9751969105\n'
      'N:;V.Kathiravan ;9994881412\n'
      'END:VCARD'),
  Contact.fromVCard('BEGIN:VCARD\n'
      'FN:IBRAHIM I\n'
      'PHONE:8056824328\n'
      'N:;Iqbal ;9042438493\n'
      'END:VCARD'),
  Contact.fromVCard('BEGIN:VCARD\n'
      'FN:INBASRI M\n'
      'PHONE:9342547039\n'
      'N:;Murugan ;9751448039\n'
      'END:VCARD'),
  Contact.fromVCard('BEGIN:VCARD\n'
      'FN:INDHU K.S\n'
      'PHONE:9087170230\n'
      'N:;Kaleeswaran.A ;9790277077\n'
      'END:VCARD'),
  Contact.fromVCard('BEGIN:VCARD\n'
      'FN:INDHULEGA S\n'
      'PHONE:9487423696\n'
      'N:;Saravana Kumar V ;9443323696\n'
      'END:VCARD'),
  Contact.fromVCard('BEGIN:VCARD\n'
      'FN:INIKA V\n'
      'PHONE:9361656662\n'
      'N:;Vimalan.A ;8778729097\n'
      'END:VCARD'),
  Contact.fromVCard('BEGIN:VCARD\n'
      'FN:JAMUNA A\n'
      'PHONE:9489546178\n'
      'N:;Arunachalam B ;9443870241\n'
      'END:VCARD'),
  Contact.fromVCard('BEGIN:VCARD\n'
      'FN:JEYAMUTHU G\n'
      'PHONE:7094695633\n'
      'N:;S Gurusamy ;9787560412\n'
      'END:VCARD'),
  Contact.fromVCard('BEGIN:VCARD\n'
      'FN:KABARTHINI K\n'
      'PHONE:9363292514\n'
      'N:;Kannan R ;9489652723\n'
      'END:VCARD'),
  Contact.fromVCard('BEGIN:VCARD\n'
      'FN:KABILA B.S\n'
      'PHONE:6384842423\n'
      'N:;Srinivasan B ;9791215625\n'
      'END:VCARD'),
  Contact.fromVCard('BEGIN:VCARD\n'
      'FN:KABILAN V\n'
      'PHONE:8111023481\n'
      'N:;N  Vetrivel ;9159266485\n'
      'END:VCARD'),
  Contact.fromVCard('BEGIN:VCARD\n'
      'FN:KARTHICK V\n'
      'PHONE:9080596570\n'
      'N:;R VENKATACHALAM ;6382914364\n'
      'END:VCARD'),
  Contact.fromVCard('BEGIN:VCARD\n'
      'FN:Kathyayini.B\n'
      'PHONE:9361616663\n'
      'N:;Badrinarayanan ;9842816663\n'
      'END:VCARD'),
  Contact.fromVCard('BEGIN:VCARD\n'
      'FN:KAVINKUMAR K\n'
      'PHONE:9585314473\n'
      'N:;Kalimuthu T ;8778363898\n'
      'END:VCARD'),
  Contact.fromVCard('BEGIN:VCARD\n'
      'FN:KAVIN T\n'
      'PHONE:9363100955\n'
      'N:;Thangavel.R ;9751385711\n'
      'END:VCARD'),
  Contact.fromVCard('BEGIN:VCARD\n'
      'FN:KRITHIKA M\n'
      'PHONE:9495408971\n'
      'N:;P Murugesan ;8075106587\n'
      'END:VCARD'),
  Contact.fromVCard('BEGIN:VCARD\n'
      'FN:LAVANYA S.B\n'
      'PHONE:9894533060\n'
      'N:;SIVASHANMUGAM.T.M ;7373041410\n'
      'END:VCARD'),
  Contact.fromVCard('BEGIN:VCARD\n'
      'FN:MAADHESH KUMAR S\n'
      'PHONE:9360230530\n'
      'N:;SARAVANAN ;9677992306\n'
      'END:VCARD'),
  Contact.fromVCard('BEGIN:VCARD\n'
      'FN:MADHAVAN V\n'
      'PHONE:8098313708\n'
      'N:;S.Varadharaj ;8489863492\n'
      'END:VCARD'),
  Contact.fromVCard('BEGIN:VCARD\n'
      'FN:MAHESH BOOPATHI A.P\n'
      'PHONE:9360246064\n'
      'N:;AMMASAIYANNAN K ;9486585854\n'
      'END:VCARD'),
  Contact.fromVCard('BEGIN:VCARD\n'
      'FN:MAHISA P\n'
      'PHONE:9994070522\n'
      'N:;Pugazlenthi .D ;9498171188\n'
      'END:VCARD'),
  Contact.fromVCard('BEGIN:VCARD\n'
      'FN:MANOJ KUMAR N\n'
      'PHONE:9025721893\n'
      'N:;NANJUNDAN S ;6380290477\n'
      'END:VCARD'),
  Contact.fromVCard('BEGIN:VCARD\n'
      'FN:MIDHUN J\n'
      'PHONE:9342292016\n'
      'N:;S Jagadeesan ;9786850527\n'
      'END:VCARD'),
  Contact.fromVCard('BEGIN:VCARD\n'
      'FN:MITHRAN J\n'
      'PHONE:6374104177\n'
      'N:;V.Jagan Mohan ;9443370559\n'
      'END:VCARD'),
  Contact.fromVCard('BEGIN:VCARD\n'
      'FN:MOHAMED NOUFAL ANSARI T\n'
      'PHONE:9488137939\n'
      'N:;M.MOHAMED THAMEEM ANSARI ;9443713536\n'
      'END:VCARD'),
  Contact.fromVCard('BEGIN:VCARD\n'
      'FN:MOHANKUMAR M\n'
      'PHONE:9043414621\n'
      'N:;MUNIYAPPAN.T ;9626175060\n'
      'END:VCARD'),
  Contact.fromVCard('BEGIN:VCARD\n'
      'FN:ARUL SANKARAN D\n'
      'PHONE:6379710906\n'
      'N:;DURAISAMY.N ;6383103388\n'
      'END:VCARD'),
  Contact.fromVCard('BEGIN:VCARD\n'
      'FN:DEEPAK N\n'
      'PHONE:8248756701\n'
      'N:;NAGARAJAN.K ;8667874461\n'
      'END:VCARD'),
  Contact.fromVCard('BEGIN:VCARD\n'
      'FN:NADAR JENISON SHEKHAR\n'
      'PHONE:9022003807\n'
      'N:;M.Shekhar ;9860965538\n'
      'END:VCARD'),
  Contact.fromVCard('BEGIN:VCARD\n'
      'FN:DHANAPAL.S\n'
      'PHONE:6383403743\n'
      'N:;SELVAM.C ;9578662239\n'
      'END:VCARD'),
  Contact.fromVCard('BEGIN:VCARD\n'
      'FN:A KISHORE ARAVIND\n'
      'PHONE:9360751460\n'
      'N:;A.ARAMULU ;9944432160\n'
      'END:VCARD'),
];
