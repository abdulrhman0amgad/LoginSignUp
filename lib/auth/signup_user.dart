import 'package:colour/colour.dart';
import 'package:flutter/material.dart';
import 'package:untitled/auth/first%20page.dart';
import 'package:untitled/auth/login.dart';
import 'package:untitled/auth/signup_helper.dart';

class signup_user extends StatefulWidget {
  signup_user({Key? key}) : super(key: key);

  @override
  _signup_userState createState() => _signup_userState();
}

class _signup_userState extends State<signup_user> {
  dynamic selectedcountry ;
  var username ;
  GlobalKey<FormState> formstate = new GlobalKey() ;
  send(){
    var formdata = formstate.currentState ;
    if(formdata!.validate()){
      
        print("username : $username");
    }
    else  
       print ("not valid");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              child: IconButton(onPressed: (){Navigator.of(context).pushNamed("first page");},
           icon: Icon(Icons.arrow_back_ios) ,
              color: Colors.white,
               ),
            ),  */                 
 //_________________________________________________________________________________
            // buttons 
           Container(

              width: double.infinity,
              margin:EdgeInsets.symmetric(horizontal: 50) ,
              decoration: BoxDecoration(
                border: Border.all(width: 1 ,color: Colors.black87),
                color: Colors.blueGrey[100],
                borderRadius: BorderRadius.circular(20),
                ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
// ________________________________
                 Container(
                   padding: EdgeInsets.symmetric(horizontal: 16.85),
                    decoration: BoxDecoration(
                      color:Colour('#3B3A86'),
                      borderRadius: BorderRadius.circular(19),
                      border: Border.all(color: Colors.black54),
                    ),
                   child:
                   MaterialButton(
                     
                    splashColor: Colors.black,
                    onPressed: (){
                      Navigator.of(context).pushNamed("signup_user");                     
                    } ,
                    child:Row(
                      
                      children: [
                        Icon(Icons.person,color: Colors.white),
                        Divider(height: 3),
                        Text(
                          "User",
                          style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.white) ,textAlign: TextAlign.center,
                          ),
                      ],
                    ),
                    )),
//______________________________
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                   
                decoration: BoxDecoration(
                  color: Colors.blueGrey[100],
                  borderRadius: BorderRadius.circular(20),
                   ),
                   
                    child:
                    MaterialButton(
                      splashColor: Colors.black,
                     onPressed:(){
                       Navigator.of(context).pushNamed("signup_helper");            
                     } ,
                     child:Row(
                       
                      children: [
                        Icon(Icons.engineering),
                        Text(
                          "Helper",
                          style: TextStyle(fontSize: 18,fontWeight: FontWeight.w900,color: Colors.black) ,textAlign: TextAlign.center,
                          ),
                      ],
                     ),),),                    
                ],
              ) ,
            ),   
            Divider(height: 20),             
                 
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
        Container(child: Text("Sign Up with one of the following options ",style: TextStyle(fontSize: 17,color: Colors.white),),),
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

                 Divider(height: 10),
//_________________________________________________________________________________
              //FullName field            
                
                    TextFormField(                  
                      keyboardType: TextInputType.name, 
                      style: TextStyle(color: Colors.white, fontSize: 18),
                      
                     decoration: InputDecoration(
                       prefixIcon: Icon(Icons.person_outline,color: Colors.grey[500],),
                      hintText: "enter your name ",
                       label: 
                       Text("Full Name",
                        style: Theme.of(context).textTheme.headline3,
                        ),
                        enabledBorder:
                      UnderlineInputBorder(
                        borderSide: BorderSide(color:Theme.of(context).primaryColor, width: 3) ,
                        borderRadius: BorderRadius.circular(20) 
                         ),
                          focusedBorder: OutlineInputBorder(    //underlineinputborder ايضا ممكن تضاف
                            borderRadius: BorderRadius.circular(20) ,
                            borderSide: BorderSide(color: Colors.blue, width: 1),
                           ),
                     ),
                   ),
                 
                 Divider(height: 20),
               
//_________________________________________________________________________________
              //E-mail field            
                
                   /* TextFormField(                  
                      keyboardType: TextInputType.emailAddress, 
                      style: TextStyle(color: Colors.white, fontSize: 18),
                      
                     decoration: InputDecoration(
                       prefixIcon: Icon(Icons.email,color: Colors.white,),
                      hintText: "enter your E-mail ",
                       label: 
                       Text("E-mail",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white),
                        ),
                        enabledBorder:
                        UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.purpleAccent, width: 3) ,
                        borderRadius: BorderRadius.circular(20) 
                         ),
                          focusedBorder: OutlineInputBorder(    //underlineinputborder ايضا ممكن تضاف
                            borderRadius: BorderRadius.circular(20) ,
                            borderSide: BorderSide(color: Colors.blue, width: 1),
                           ),
                     ),
                   ),
                 
                 Divider(height: 10),*/

//_________________________________________________________________________________
              //phone field            
                
                    TextFormField(                  
                      keyboardType: TextInputType.phone, 
                      style: TextStyle(color: Colors.white, fontSize: 18),
                      
                     decoration: InputDecoration(
                       prefixIcon: Icon(Icons.phone,color: Colors.grey[500],),
                      hintText: "enter your phone number ",
                       label: 
                       Text("Phone ",
                        style: Theme.of(context).textTheme.headline3,
                        ),
                        enabledBorder:
                        UnderlineInputBorder(
                        borderSide: BorderSide(color: Theme.of(context).primaryColor, width: 3) ,
                        borderRadius: BorderRadius.circular(20) 
                         ),
                          focusedBorder: OutlineInputBorder(    //underlineinputborder ايضا ممكن تضاف
                            borderRadius: BorderRadius.circular(20) ,
                            borderSide: BorderSide(color: Colors.blue, width: 1),
                           ),
                     ),
                   ),
                 
                 Divider(height: 20),
//_________________________________________________________________________________
              //car num field            
                
                    TextFormField(                  
                      keyboardType: TextInputType.phone, 
                      style: TextStyle(color: Colors.white, fontSize: 18),
                      
                     decoration: InputDecoration(
                       prefixIcon: Icon(Icons.car_repair ,color: Colors.grey[500],),
                      hintText: "enter your Car number ",
                       label: 
                       Text("Car Nubmer ",
                        style: Theme.of(context).textTheme.headline3,
                        ),
                        enabledBorder:
                        UnderlineInputBorder(
                        borderSide: BorderSide(color:Theme.of(context).primaryColor, width: 3) ,
                        borderRadius: BorderRadius.circular(20) 
                         ),
                          focusedBorder: OutlineInputBorder(    //underlineinputborder ايضا ممكن تضاف
                            borderRadius: BorderRadius.circular(20) ,
                            borderSide: BorderSide(color: Colors.blue, width: 1),
                           ),
                     ),
                   ),
                 
                 Divider(height: 20),                 
//_________________________________________________________________________________
              // National ID           
                
                    TextFormField(                  
                      keyboardType: TextInputType.phone, 
                      style: TextStyle(color: Colors.white, fontSize: 18),
                      
                     decoration: InputDecoration(
                       prefixIcon: Icon(Icons.card_membership,color: Colors.grey[500],),
                      hintText: "enter your National ID",
                       label: 
                       Text("National ID",
                        style: Theme.of(context).textTheme.headline3,
                        ),
                        enabledBorder:
                        UnderlineInputBorder(
                        borderSide: BorderSide(color: Theme.of(context).primaryColor, width: 3) ,
                        borderRadius: BorderRadius.circular(20) 
                         ),
                          focusedBorder: OutlineInputBorder(    //underlineinputborder ايضا ممكن تضاف
                            borderRadius: BorderRadius.circular(20) ,
                            borderSide: BorderSide(color: Colors.blue, width: 1),
                           ),
                     ),
                   ),
                 
                 Divider(height: 20),                 

 //_________________________________________________________________________________
              //pass field
                   Form(
                     child: TextFormField(
                      // autovalidateMode: AutovalidateMode.always,
                    validator: (text){
                        if ( text!.length < 4 ){
                          return " لا يمكن ان يكون النص اقل من 4 احرف " ;
                        }
                        if ( text.length > 10 ){
                          return " لا يمكن ان يكون النص اكبر من 10 احرف " ;
                        }
                 
                        return null;
                      },
                         keyboardType: TextInputType.visiblePassword, 
                      obscureText: true,
                        style: Theme.of(context).textTheme.headline3,
                       decoration: InputDecoration(
                         
                         prefixIcon: Icon(Icons.security,color: Colors.grey[500], ),
                         label: 
                         Text("Password",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.grey[500]),
                          ),
                         enabledBorder: 
                        UnderlineInputBorder(
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
              //confirm pass field
                   Form(
                     child: TextFormField(
                       //autovalidateMode: AutovalidateMode.always,
                    validator: (text){
                        if ( text!.length < 4 ){
                          return " لا يمكن ان يكون النص اقل من 4 احرف " ;
                        }
                        if ( text.length > 10 ){
                          return " لا يمكن ان يكون النص اكبر من 10 احرف " ;
                        }
                 
                        return null;
                      },
                         keyboardType: TextInputType.visiblePassword, 
                      obscureText: true,
                        style: Theme.of(context).textTheme.headline3,
                       decoration: InputDecoration(
                         
                         prefixIcon: Icon(Icons.security,color: Colors.grey[500], ),
                         label: 
                         Text("Confirm Password",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.grey[500]),
                          ),
                         enabledBorder: 
                        UnderlineInputBorder(
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
              // National ID           
                
                   /* TextFormField(                  
                      keyboardType: TextInputType.phone, 
                      style: TextStyle(color: Colors.white, fontSize: 18),
                      
                     decoration: InputDecoration(
                       prefixIcon: Icon(Icons.card_membership,color: Colors.grey[500],),
                      hintText: "enter your National ID",
                       label: 
                       Text("National ID",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.grey[500]),
                        ),
                        enabledBorder:
                        UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.purpleAccent, width: 3) ,
                        borderRadius: BorderRadius.circular(20) 
                         ),
                          focusedBorder: OutlineInputBorder(    //underlineinputborder ايضا ممكن تضاف
                            borderRadius: BorderRadius.circular(20) ,
                            borderSide: BorderSide(color: Colors.blue, width: 1),
                           ),
                     ),
                   ),
                 
                 Divider(height: 20),*/
//_________________________________________________________________________________
        // select City

 Center(child:
    Container(
      //color: Colors.blue,
      margin: EdgeInsets.symmetric(horizontal: 15),
      child: DropdownButton( 
        dropdownColor: Colors.black,//لون الليست بتاع الايتمز  
      underline: Divider(color:Theme.of(context).primaryColor,height: 8,thickness: 2,), //لعدم ظهور الخط الاسفل بوضوح
      isExpanded: true, //العرض يمد الشاشه كلها
        hint: Container(
          padding: EdgeInsets.only(right: 15),
          width: double.infinity,
          child: Row(
            children: [
              Icon(Icons.location_city, color: Colors.grey[500],),
              Text(
              "Select Country", 
              style: Theme.of(context).textTheme.headline3,
              textAlign: TextAlign.left,
              textDirection: TextDirection.ltr,
              ),
            ],
          )),
        //icon: Icon(Icons.location_city, color: Colors.white,size: 30,),
       iconEnabledColor: Colors.white,
       iconSize: 30,
        items:["اسوان" , "الفيوم" ,"الجيزة" , "القاهرة" , "البحيرة","كفر الشيخ","مطروح","بني سويف","الشرقية","الاقصر","الاسكندرية","بورسعيد","شمال سيناء","جنوب سيناء","المنوفية"]
        .map((e) => DropdownMenuItem(
          child: Text("محافظة $e ", style: Theme.of(context).textTheme.headline3,),
          value: e,
          )).toList(),
         onChanged: (dynamic val){setState(() {
           selectedcountry =val;
         });},
        value: selectedcountry,
        ),
    ),
    
    ),
    Divider(height: 20),
//_________________________________________________________________________________
        // add Image
    Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 5),
        margin: EdgeInsets.symmetric(horizontal: 15), 
        color: Theme.of(context).primaryColor,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 70),
          child: ElevatedButton(
                onPressed: (){showbottomsheet();},
               child:Text("add car photo",textAlign: TextAlign.center ,style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700,color: Colors.black)),
               style: ElevatedButton.styleFrom(
                 primary: Colors.blueGrey[100],
               ),
           ),
        )
      ),
      Divider(height: 15),
//_________________________________________________________________________________
              //forget password ?
             /* Container(
                width: double.infinity,
                child: 
                InkWell(onTap:(){} ,
                child: Text("forget password ?" ,
                style: TextStyle(color: Colors.blue,fontStyle: FontStyle.italic ,),textAlign: TextAlign.start,
              ),), 
              ),
         Divider(height: 20),*/
//_________________________________________________________________________________
              //sign up button

                 Container(
                   width: 300,
                   child: 
                   ElevatedButton(  
                     onPressed: (){},
                     style: ElevatedButton.styleFrom(
                       primary: Colour('#3B3A86'),
                       shape: 
                       RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(20))
                        ),
                     child:  
                          Text(
                             "SIGN UP",
                                style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),)
                    ),
                 ),
//_________________________________________________________________________________
        //Already have an account? 
                    Divider(height: 20),

                     Container( margin: EdgeInsets.symmetric(horizontal: 70),
                       child: 
                          InkWell(child: Text(
                            "Already have an account? " ,
                            style: TextStyle(fontStyle: FontStyle.italic, color: Colors.blue),
                          ),
                          onTap: (){Navigator.of(context).pushNamed("login");
                                  },),  
                        
                      ),
                                     
                    
                 
              ],
            ),
          
          ),
      ],))
    );


  }
  showbottomsheet(){
    return showModalBottomSheet(context: context, builder: (context){

      return Container(
        padding: EdgeInsets.all(20),
        height: 250,
        child:
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("please choose Image", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),

          InkWell(
            onTap: (){},
                child: 
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
              child: 
                Row(
                  children: [
                    Icon(Icons.photo , size: 30,),
                    VerticalDivider(width: 12,color: Colors.white,),
                    Text("from Gallery", style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),),
                  ],
                ))),

          InkWell(
            onTap: (){},
                child: 
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
              child: 
                Row(
                  children: [
                    Icon(Icons.camera, size: 30),
                    VerticalDivider(width: 12,color: Colors.white,),
                    Text("from camera", style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),),
                  ],
                ),)),

          InkWell(
            onTap: (){},
                child: 
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
              child: 
                Row(
                  children: [
                    Icon(Icons.web_asset, size: 30),
                    VerticalDivider(width: 12,color: Colors.white,),
                    Text("from Web", style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),),
                  ],
                ),)),
             
              

              

              
            ],),
       ) ; 
    });
  }
}