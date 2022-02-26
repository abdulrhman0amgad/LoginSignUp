import 'dart:ui';
import 'package:colour/colour.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:untitled/auth/first%20page.dart';
import 'package:untitled/auth/service_contacts.dart';
import 'package:untitled/auth/signup_user.dart';


class login extends StatefulWidget {
  login({Key? key}) : super(key: key);

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  
  var username ;
  GlobalKey<FormState> formstate = new GlobalKey() ;
  send(){
     
    var formdata = formstate.currentState ;
    if(formdata!.validate()){
      
        print("username : $username");
    }
    else {
      print ("not valid");
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

     /* appBar: AppBar(backgroundColor:Colors.purpleAccent[400],

        title:  Text("Login", style: TextStyle(fontSize:30 , fontWeight: FontWeight.bold),),
        actions: [
           IconButton(onPressed: (){}, icon: Icon(Icons.search),iconSize: 30),
           Container(
             margin: EdgeInsets.only(right: 10),
             child: CircleAvatar(
               radius: 20,child: InkWell(onTap: (){} ,child: Text("PIC"))),
           )],     
      ),*/ 
      body: Container(
       
        color: Theme.of(context).backgroundColor,
        
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
              child:
             Column(
               children: [
//_________________________________________________________________________________
            //arrow back

           /* Container(
              alignment: Alignment.topLeft,
              child: IconButton(onPressed: (){Navigator.of(context).pop("first page");},
           icon: Icon(Icons.arrow_back_ios) ,
              color: Colors.white,
               ),
            ),     */           
//_________________________________________________________________________________
            //Top Bar   
       /*  Container(
            margin: EdgeInsets.only( bottom: 15),
            child: 
               Text(
                 "Login", 
                 style: TextStyle(
                      fontSize:40 , 
                      fontWeight: FontWeight.bold, 
                      color: Colors.white ,
                      ),),
                  Container(
                      child:
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceAround,
                         children: [
                           IconButton(
                             onPressed: (){},
                              icon: Icon(Icons.search),
                              iconSize: 30,color: Colors.white,
                              ),
                           CircleAvatar(
                              radius: 20,
                              child: InkWell(
                                onTap: (){} ,
                                child: Text("PIC")
                                )),
               ]))
                 ),*/
//_________________________________________________________________________________
            //logo image                          
                Container(
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
              Divider(height: 20),

      Container(child: Text("Login with one of the following options ",style: TextStyle(fontSize: 17,color: Colors.white),),),

//_________________________________________________________________________________
              // google , facbook buttons           
                  Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.mail),iconSize:60, color: Colors.blue, ),
                      IconButton(onPressed: (){}, icon: Icon(Icons.facebook,),iconSize:60, color: Colors.blue, ),
                  ],
                ),
                 Divider(height: 10),
//_________________________________________________________________________________                
                Container(child: 
                Text("________________    OR    ________________",
                  style: TextStyle(fontSize: 17,color: Colors.grey),
                  ),),

                
                Divider(height: 50),
//_________________________________________________________________________________
              //Phone field            
                
                    TextFormField(                  
                      keyboardType: TextInputType.phone, 
                      style: TextStyle(color: Colors.white, fontSize: 18),
                      
                     decoration: InputDecoration(
                       prefixIcon: Icon(Icons.phone,color: Colors.grey[500],),
                     
                       label: 
                       Text("Phone Number",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900,color: Colors.grey[500]),
                        ),
                        enabledBorder:
                      OutlineInputBorder(
                        borderSide: BorderSide(color:Theme.of(context).primaryColor, width: 3) ,
                        borderRadius: BorderRadius.circular(20) 
                         ),
                          focusedBorder: OutlineInputBorder(    //underlineinputborder ايضا ممكن تضاف
                            borderRadius: BorderRadius.circular(20) ,
                            borderSide: BorderSide(color: Colors.blue, width: 1),
                           ),
                     ),
                   ),
                 
                 Divider(height: 30),

 //_________________________________________________________________________________
              //pass field
                   Form(
                     child: TextFormField(
                      /* autovalidateMode: AutovalidateMode.always,
                    validator: (text){
                        if ( text!.length < 4 ){
                          return " لا يمكن ان يكون النص اقل من 4 احرف " ;
                        }
                        if ( text.length > 10 ){
                          return " لا يمكن ان يكون النص اكبر من 10 احرف " ;
                        }
                 
                        return null;
                      },*/
                         keyboardType: TextInputType.visiblePassword, 
                      obscureText: true,
                      style: TextStyle(color: Colors.white, fontSize: 18),
                       decoration: InputDecoration(
                         
                         prefixIcon: Icon(Icons.security,color: Colors.grey[500] ),
                         label: 
                         Text("Password",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900,color: Colors.grey[500]),
                          ),
                         enabledBorder: 
                        OutlineInputBorder(
                           borderSide: BorderSide(color:Theme.of(context).primaryColor, width: 3) ,
                           borderRadius: BorderRadius.circular(20) 
                           ),
                           focusedBorder: OutlineInputBorder(    //underlineinputborder ايضا ممكن تضاف
                            borderRadius: BorderRadius.circular(20) ,
                            borderSide: BorderSide(color: Colors.blue, width: 1),
                           ),
                       ),
                       ),
                   ),

            Divider(height: 20),
//_________________________________________________________________________________
              //forget password ?
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                width: double.infinity,
                child: 
                InkWell(onTap:(){} ,
                child: Text("forget password ?" ,
                style: TextStyle(color: Colors.blue ,),textAlign: TextAlign.start,
              ),), 
              ),
         Divider(height: 20),
//_________________________________________________________________________________
              //login button

                 Container(
                   width: 300,
                   child: 
                   ElevatedButton(  
                     onPressed: (){Navigator.of(context).pushNamedAndRemoveUntil("service_contacts", (route) => false);
                      
                       },
                     style: ElevatedButton.styleFrom(
                      primary: Colour('#3B3A86') ,
                       shape: 
                       RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(20))
                        ),
                     child: 
                          Text(
                             "Log In",
                                style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),)
                    ),
                 ),
//_________________________________________________________________________________
        //doesn't have account ?
                    Divider(height: 20),

                     Container( margin: EdgeInsets.symmetric(horizontal: 70),
                       child: Row(
                        children: [
                          Text(
                            "Doesn't have an account ? " ,
                            style: TextStyle( color: Colors.white),
                            ),

                          InkWell(child: Text(
                            "sign up",
                            style: TextStyle(fontStyle: FontStyle.italic, color: Colors.blue),
                          ),
                          onTap: (){
                           Navigator.of(context).pushNamed("signup_user");},),  
                        ],
                      ),),
                                     
              ],
            ),
          
          ),
      ],))
    );
}
}