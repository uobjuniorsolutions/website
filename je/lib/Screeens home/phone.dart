import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:je_website/backgrounds/backmain2.dart';
import 'package:url_launcher/url_launcher.dart';

import 'dart:math';
import 'dart:ui';


import 'package:http/http.dart' as http;
import 'package:je_website/widget/popup.dart';

import '../backgrounds/backmain.dart';
import '../data/email.dart';
import '../widget/buttonHover.dart';
import '../widget/card.dart';
import '../widget/card2.dart';
class Phone extends StatefulWidget {
  const Phone({Key? key}) : super(key: key);

  @override
  State<Phone> createState() => _PhoneState();
}

List<CustomPopupMenu> choices = <CustomPopupMenu>[
  CustomPopupMenu(
    title: 'Home',
    icon: Icons.home,
  ),
  CustomPopupMenu(
    title: 'Abous Us',
    icon: Icons.bookmark,
  ),
  CustomPopupMenu(
    title: 'Services',
    icon: Icons.settings,
  ),
  CustomPopupMenu(
    title: 'Contact',
    icon: Icons.settings,
  ),
];

class _PhoneState extends State<Phone> {




  ScrollController controllerOne = ScrollController();



  @override
  void initState() {
    controllerOne = ScrollController();

    super.initState();
  }

  sendEmail info = sendEmail('', '', '', '');

  var url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
  CustomPopupMenu _selectedChoices = choices[0];
  void _select(CustomPopupMenu choice) {
    setState(() {
      _selectedChoices = choice;
    });
  }

  Future save() async {
    print('toto');
    var res = await http.post(url,
        headers: {'Content-Type': 'application/json; charset=UTF-8',},
        body: json.encode({
          'service_id': 'service_arfs545',
          'template_id': 'template_ry1jdhd',
          'user_id': '0jPttbRmdO2fMh_tY',
          'template_params':{
            'user_name': info.name,
            'user_email' : info.email,
            'user_subject' : info.subject,
            'user_message' : info.message
          },


        })
    );
  }
  late bool showBorder = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double pw = (size.width/80);
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 100,
        title: Image.asset('Assets/logo3.png'),


        actions: [





          PopupMenuButton<CustomPopupMenu>(

            child: Icon(
              FontAwesomeIcons.navicon,
              color: Colors.black
              ,
            ),
            elevation: 3.2,

            onCanceled: () {
              print('You have not chossed anything');
            },
            tooltip: 'This is tooltip',
            onSelected: (value) {
              if(value==choices[0]) {
                controllerOne.animateTo(
                  71, duration: Duration(milliseconds: 1000),
                  curve: Curves.ease,);
              }else if(value==choices[1]){
                controllerOne.animateTo(
                  801, duration: Duration(milliseconds: 1000),
                  curve: Curves.ease,);
              }else if(value==choices[2]){
                controllerOne.animateTo(
                  1600, duration: Duration(milliseconds: 1000),
                  curve: Curves.ease,);
              }else if(value==choices[3]){
                controllerOne.animateTo(
                  3850, duration: Duration(milliseconds: 1000),
                  curve: Curves.ease,);
              }
            },

            itemBuilder: (BuildContext context) {
              return choices.map((CustomPopupMenu choice) {
                return PopupMenuItem<CustomPopupMenu>(
                  value: choice,
                  child: Text(choice.title),
                );
              }).toList();
            },
          ),
          Container(width: (50),)



        ],
      ),


      body: SingleChildScrollView(
        controller: controllerOne,
        child: backmain2(
          child: Container(



            child: Column(
              children: [




                SizedBox(height: 140,),
                Container(
                  height: 520,
                  child: Row(





                    children: [
                      SizedBox(width: size.width/13,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Container(
                            width: size.width/1.2,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 70, 0),
                              child: Text('Bridging the gap between ',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 50,
                                  fontWeight: FontWeight.w200,
                                  decoration: TextDecoration.none,







                                ),

                              ),
                            ),
                          ),
                          SizedBox(height: 30,),
                          Container(
                            width: size.width/1.2,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(2, 0, 0, 0),
                              child: Text('University & Industry',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color:  Color(0xFF98BDD8), // try this blue
                                  fontSize: 70,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.none,






                                ),
                              ),
                            ),
                          ),

                          SizedBox(height: 30,),

                          Container(
                            width: size.width/1.2,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(6, 0, 0, 0),
                              child: Text('We help you realise your digital business with software that suit your business  ',
                                style: TextStyle(
                                  color: Colors.black,

                                  fontSize: 20,
                                  fontWeight: FontWeight.w200,
                                  decoration: TextDecoration.none,






                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 40,),

                          Container(
                            height: 44.0,
                            width: 240,
                            decoration: BoxDecoration(gradient: LinearGradient(colors: [Color(0xFF98BDD8), Color(0xFFAEBDD8)]),
                              borderRadius: BorderRadius.all(
                                Radius.circular(20.0),
                              ),
                            ),

                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(primary: Colors.transparent, shadowColor: Colors.transparent),
                              child: Text('Get Started',
                                style: TextStyle(
                                  fontSize: 20,
                                ),

                              ),
                            ),
                          ),

                          //SizedBox(height: 200),









                        ],



                      ),










                    ],

                  ),
                ),

                SizedBox(height: 100,),

                Container(
                  height: 750,
                  child: Column(
                    children: [
                      Container(

                        child: Center(child: Text('About us',
                          style: TextStyle(
                            color: Colors.black,

                            fontSize: 50,
                            fontWeight: FontWeight.normal,
                            decoration: TextDecoration.none,






                          ),
                        ),
                        ),


                      ),
                      SizedBox(height: 8,),


                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xFF98BDD8),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20.0),
                          ),
                        ),
                        width: 110,
                        height: 5,

                      ),

                      SizedBox(height : 70),



                      Center(
                        child: Container(
                          width: size.width/1.5,
                          child: Text('UoB Junior Solutions is a consulting firm that is run by University of Birmingham students. We provide digital solutions, data analytics and strategy services to individuals, small and medium companies, as well as institutions. Through the provision of these high quality services at competitive prices, we aim to aid and facilitate start-ups in their development.',
                            style :TextStyle(
                              color: Colors.black,

                              fontSize: 20,
                              fontWeight: FontWeight.w200,
                              decoration: TextDecoration.none,
                              letterSpacing: 0,
                              height: 1.3,








                            ),
                            textAlign: TextAlign.center,),
                        ),
                      ),
                      SizedBox(height: 70,),


                      Container(
                        height: 44.0,
                        width: 240,
                        decoration: BoxDecoration(gradient: LinearGradient(colors: [Color(0xFF98BDD8), Color(0xFFAEBDD8)]),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20.0),
                          ),
                        ),



                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(primary: Colors.transparent, shadowColor: Colors.transparent),
                          child: Text('Brochure',
                            style: TextStyle(
                              fontSize: 20,
                            ),

                          ),
                        ),
                      ),


                    ],
                  ),
                ),
                SizedBox(height: 20,),

                Column(
                  children: [

                    Container(

                      child: Center(child: Text('Our Services',
                        style: TextStyle(
                          color: Colors.black,

                          fontSize: 50,
                          fontWeight: FontWeight.normal,
                          decoration: TextDecoration.none,






                        ),
                      ),
                      ),


                    ),



                    SizedBox(height: 8,),


                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF98BDD8),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                      ),
                      width: 110,
                      height: 5,

                    ),



                    SizedBox(height: 60,),

                    card2(s: 'Web Development',i: 'Assets/lines.png',c1:Color(0xff2193b0),c2:Color(0xff6dd5ed)),

                    SizedBox(height: 0,),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
                      child: Container(
                        //height: 300,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 40,),
                            Text('Web Development',

                              style: TextStyle(
                                  fontSize: 20,

                                  color: Colors.grey[500]
                              ),
                              textAlign: TextAlign.left,),

                            SizedBox(height: 20,),
                            Container(
                              width: 480,
                              child: Text('Lorem Ipsum is simply dummy text',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 28,
                                ),),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 60,),
                    Container(
                      height: 1,
                      width: size.width/1.6,
                      color: Colors.black,
                    ),
                    SizedBox(height: 60,),

                    card2( s: 'Software Engineering', i: 'Assets/waves.png',c1:Color(0xffbdc3c7),c2:Color(0xff2c3e50)),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
                      child: Container(
                        //height: 300,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 40,),
                            Text('Software Engineer',

                              style: TextStyle(
                                  fontSize: 20,

                                  color: Colors.grey[500]
                              ),
                              textAlign: TextAlign.left,),

                            SizedBox(height: 20,),
                            Container(
                              width: 480,
                              child: Text('Lorem Ipsum is simply dummy text',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 28,
                                ),),
                            ),


                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 60,),
                    Container(
                      height: 1,
                      width: size.width/1.6,
                      color: Colors.black,
                    ),
                    SizedBox(height: 60,),

                    card2(s: 'Data',i: 'Assets/lines.png',c1:Color(0xffec6f66),c2:Color(0xfff3a183)),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
                      child: Container(
                        //height: 300,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 40,),
                            Text('Data',

                              style: TextStyle(
                                  fontSize: 20,

                                  color: Colors.grey[500]
                              ),
                              textAlign: TextAlign.left,),

                            SizedBox(height: 20,),
                            Container(
                              width: 480,
                              child: Text('Lorem Ipsum is simply dummy text,',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 28,
                                ),),
                            ),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(height: 60,),
                    Container(
                      height: 1,
                      width: size.width/1.6,
                      color: Colors.black,
                    ),
                    SizedBox(height: 60,),
                    card2(s: 'Strategy', i: 'Assets/waves.png',c1:Color(
                        0xd8000428),c2:Color(0xff004e92)),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
                      child: Container(
                       // height: 300,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 40,),
                            Text('Strategy',

                              style: TextStyle(
                                  fontSize: 20,

                                  color: Colors.grey[500]
                              ),
                              textAlign: TextAlign.left,),

                            SizedBox(height: 20,),
                            Container(
                              width: 480,
                              child: Text('Lorem Ipsum is simply dummy text ',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 28,
                                ),),
                            ),


                          ],
                        ),
                      ),
                    ),








                  ],
                ),
                SizedBox(height: 150,),
                Column(
                  children: [
                    Container(

                      child: Center(child: Text('A question?',
                        style: TextStyle(
                          color: Colors.black,

                          fontSize: 50,
                          fontWeight: FontWeight.normal,
                          decoration: TextDecoration.none,






                        ),
                      ),
                      ),


                    ),
                    SizedBox(height: 8,),
                    Text('Do not hesitate to contact us !',
                      style: TextStyle(
                        color: Colors.grey[700],

                        fontSize: 30,
                        fontWeight: FontWeight.normal,
                        decoration: TextDecoration.none,
                      ),),

                    SizedBox(height: 14,),


                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF98BDD8),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                      ),
                      width: 110,
                      height: 5,

                    ),

                    SizedBox(height: 100,),

                    Card(
                      color: Colors.white,
                      elevation: 20,

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: SizedBox(
                        width: size.width/1.1,
                        height: 600,
                        child:
                        Center(child:

                        Column(
                          children: [

                            SizedBox(height: 50),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [

                                Container(
                                  height: 70,
                                  width: size.width/2.4,
                                  child: TextFormField(
                                    textAlign: TextAlign.left,
                                    controller: TextEditingController(text: info.name),
                                    onChanged: (val){
                                      info.name = val;
                                    },

                                    keyboardType: TextInputType.text,
                                    decoration: InputDecoration(
                                        hintText: 'Name',

                                        hintStyle: TextStyle(fontSize: 16),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(15),
                                          borderSide: BorderSide(
                                            width: 0,
                                            style: BorderStyle.none,
                                          ),
                                        ),
                                        filled: true,
                                        contentPadding: EdgeInsets.all(16),
                                        fillColor: Colors.grey[200]
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Container(
                                  height: 70,
                                  width: size.width/2.4,
                                  child: TextFormField(
                                    textAlign: TextAlign.left,
                                    controller: TextEditingController(text: info.email),
                                    onChanged: (val){
                                      info.email = val;
                                    },
                                    keyboardType: TextInputType.text,
                                    decoration: InputDecoration(
                                        hintText: 'Email',

                                        hintStyle: TextStyle(fontSize: 16),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(15),
                                          borderSide: BorderSide(
                                            width: 0,
                                            style: BorderStyle.none,
                                          ),
                                        ),
                                        filled: true,
                                        contentPadding: EdgeInsets.all(16),
                                        fillColor: Colors.grey[200]
                                    ),
                                  ),
                                ),

                              ],
                            ),
                            SizedBox(height: 0,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [

                                Container(
                                  height: 70,
                                  width: size.width/2.4,
                                  child: TextFormField(
                                    textAlign: TextAlign.left,
                                    // controller: searchCtrl,
                                    keyboardType: TextInputType.text,
                                    decoration: InputDecoration(
                                        hintText: 'Company',

                                        hintStyle: TextStyle(fontSize: 16),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(15),
                                          borderSide: BorderSide(
                                            width: 0,
                                            style: BorderStyle.none,
                                          ),
                                        ),
                                        filled: true,
                                        contentPadding: EdgeInsets.all(16),
                                        fillColor: Colors.grey[200]
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Container(
                                  height: 70,
                                  width: size.width/2.4,
                                  child: TextFormField(
                                    textAlign: TextAlign.left,
                                    controller: TextEditingController(text: info.subject),
                                    onChanged: (val){
                                      info.subject = val;
                                    },
                                    keyboardType: TextInputType.text,
                                    decoration: InputDecoration(
                                        hintText: 'Subject',

                                        hintStyle: TextStyle(fontSize: 16),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(15),
                                          borderSide: BorderSide(
                                            width: 0,
                                            style: BorderStyle.none,
                                          ),
                                        ),
                                        filled: true,
                                        contentPadding: EdgeInsets.all(16),
                                        fillColor: Colors.grey[200]
                                    ),
                                  ),
                                ),

                              ],
                            ),

                            Container(
                              height: 300,
                              width: size.width/1.170,
                              child: TextFormField(
                                textAlign: TextAlign.left,
                                controller: TextEditingController(text: info.message),
                                onChanged: (val){
                                  info.message = val;
                                },
                                keyboardType: TextInputType.multiline,
                                maxLines: 30,


                                decoration: InputDecoration(
                                    hintText: 'Message',

                                    hintStyle: TextStyle(fontSize: 16),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      borderSide: BorderSide(
                                        width: 0,
                                        style: BorderStyle.none,
                                      ),
                                    ),
                                    filled: true,
                                    contentPadding: EdgeInsets.all(16),
                                    fillColor: Colors.grey[200]
                                ),
                              ),
                            ),




                            SizedBox(height: 30,),

                            Container(
                              height: 44.0,
                              width: 240,
                              decoration: BoxDecoration(gradient: LinearGradient(colors: [Color(0xFF98BDD8), Color(0xFFAEBDD8)]),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20.0),
                                ),
                              ),

                              child: ElevatedButton(
                                onPressed: () {
                                  save();
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => Phone()));
                                  print(info.name);
                                },
                                style: ElevatedButton.styleFrom(primary: Colors.transparent, shadowColor: Colors.transparent),
                                child: Text('Send',
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),

                                ),
                              ),
                            ),




                          ],
                        )),
                      ),
                    )

                  ],


                ),

                SizedBox(height: 100,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    Container(
                      width: 200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Useful Link',
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              decoration: TextDecoration.none,

                            ),
                          ),
                          SizedBox(height: 50,),

                          Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
                            style :TextStyle(
                              color: Colors.black,

                              fontSize: 15,
                              fontWeight: FontWeight.w200,
                              decoration: TextDecoration.none,
                              letterSpacing: 0,
                              height: 2,








                            ),
                          ),


                        ],
                      ),
                    ),
                    Container(
                      width: 200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Stay Connected',
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              decoration: TextDecoration.none,

                            ),
                          ),
                          SizedBox(height: 50,),

                          Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
                            style :TextStyle(
                              color: Colors.black,

                              fontSize: 15,
                              fontWeight: FontWeight.w200,
                              decoration: TextDecoration.none,
                              letterSpacing: 0,
                              height: 2,








                            ),
                          ),


                        ],
                      ),
                    ),
                  ],
                )


              ],
            ),


          ),
        ),
      ),
    );
  }
}
