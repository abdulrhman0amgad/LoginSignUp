import 'dart:ui';
import 'package:colour/colour.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:untitled/auth/login.dart';
import 'package:untitled/auth/signup_user.dart';

class firstpage extends StatefulWidget {
  firstpage({Key? key}) : super(key: key);

  @override
  _firstpageState createState() => _firstpageState();
}
class _firstpageState extends State<firstpage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.green),
         color: Theme.of(context).backgroundColor,
        ),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [

//_________________________________________________________________________________
            //image of winch

              Container(
              height: 350,
              width: 230,
              margin: EdgeInsets.only( top:50),
              decoration:BoxDecoration(
                border: Border.all(width: 3 , color: Colors.black),
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                  image: AssetImage("assets/images/background.jpg")),
                  ) 
              ),
//_________________________________________________________________________________
            //text
            Container(
              margin: EdgeInsets.symmetric(horizontal: 100),
              width: double.infinity,
              child: Text("we can help you any time",
              style: TextStyle(fontSize: 25 ,fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
              )),

              Divider(height: 30,),
//_________________________________________________________________________________
            // description text
            Container(
              margin: EdgeInsets.symmetric(horizontal: 70),
              width: double.infinity,
              child: Text(
                "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                style: TextStyle(color: Colors.grey[700] , fontSize: 15),
                textAlign: TextAlign.center,
              )),
               Divider(height: 70, ),
//_________________________________________________________________________________
            // buttons 
            Container(
              
              margin:EdgeInsets.symmetric(horizontal: 67) ,
              decoration: BoxDecoration(
                border: Border.all(width: 1 ,color: Colors.black87),
                color: Colors.blueGrey[100],
                borderRadius: BorderRadius.circular(20),
                ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
//______________________________________________________
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      color: Colour('#3B3A86'),
                      borderRadius: BorderRadius.circular(17),
                      border: Border.all(color: Colors.black54),
                    ),
                    child:
                    MaterialButton(
                      splashColor: Colors.black,
                     onPressed:(){Navigator.of(context).pushNamed("signup_user");
                            } ,
                     child:Text(
                        "Register",
                        style: TextStyle(fontSize: 18,fontWeight: FontWeight.w900),textAlign: TextAlign.center,
                       ),
                     ),),
// _____________________________________________________
                 Container(
                   padding: EdgeInsets.symmetric(horizontal: 15.8),
                   
                decoration: BoxDecoration(
                  color: Colors.blueGrey[100],
                  borderRadius: BorderRadius.circular(20),
                   ),
                   child:
                   MaterialButton(
                    splashColor: Colors.black,
                    onPressed: (){Navigator.of(context).pushNamed("login");
                            } ,
                    child:Text(
                      "Login",
                      style: TextStyle(fontSize: 18,fontWeight: FontWeight.w900) ,textAlign: TextAlign.center,
                      ),
                    ))
                ],
              ) ,
            )
       ],
        ),
      ),
    );
  }
}