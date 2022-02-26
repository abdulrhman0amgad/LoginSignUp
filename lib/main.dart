import 'dart:ui';
import 'package:colour/colour.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/form.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/widgets/page_view.dart';
import 'package:untitled/auth/first%20page.dart';
import 'package:untitled/auth/service_contacts.dart';
import 'package:untitled/auth/signup_helper.dart';
import 'package:untitled/auth/signup_user.dart';
import 'package:untitled/auth/login.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:color/color.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() {

   runApp( MyApp());
}
 class MyApp extends StatefulWidget {
   const MyApp({ Key? key }) : super(key: key);
 
   @override
   _myappState createState() => _myappState();
 }
 
 class _myappState extends State<MyApp> {
  

   @override
   Widget build(BuildContext context) {
     var pageTransitionType;
     return MaterialApp(
         debugShowCheckedModeBanner: false,
       theme: ThemeData(
         primaryColor: Colour('#3E428C'),
         backgroundColor:Colour('#1F2233'),
         buttonTheme: ButtonThemeData(buttonColor: Colour('#3B3A86')),
        textTheme: TextTheme(headline3: TextStyle(fontSize: 20, fontWeight: FontWeight.w900,color: Colors.grey[500]),
       ),),

       routes: 
      {
       "login": (context)=>login(),
       "signup_user" : (context) =>signup_user(),
       "signup_helper" : (context) =>signup_helper(),
       "first page" : (context) =>firstpage(),
       "service_contacts" : (context) =>service_contacts(),
      },
       
       home:AnimatedSplashScreen(
         nextScreen: 
            firstpage(),
         backgroundColor: Colors.blueGrey,
         splashTransition: SplashTransition.sizeTransition,
         pageTransitionType: pageTransitionType,
         splashIconSize: 150,
         splash: Container(
              height: 150,
              width: 150,
              //margin: EdgeInsets.only( top:50),
              decoration:BoxDecoration(
                border: Border.all(width: 2 , color: Colors.white),
                borderRadius: BorderRadius.circular(70),
                image: DecorationImage(
                  image: AssetImage("assets/images/logo_winch2.jpeg")),
                  ) 
              ),
     ),
      
       
     );
   }
 }
  

/*class homepage extends StatefulWidget {
  homepage({Key? key}) : super(key: key);

  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {

  dynamic selectedcountry ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:Container(
        child: Text("ss"),
      ),

           
    );
  }
}*/