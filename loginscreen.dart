import 'dart:developer';

import 'package:demoapp/signupscreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'dashboardscreen.dart';
class loginscreen extends StatefulWidget{
  @override
  State<loginscreen> createState() => loginscreenstate();
}
class loginscreenstate extends State<loginscreen>{
  @override
  Widget build(BuildContext context) {

    TextEditingController emailcontroller = TextEditingController();
    TextEditingController passwordcontroller = TextEditingController();

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    void loggingin() async{
      String lemail = emailcontroller.text.trim();
      String lpassword = passwordcontroller.text.trim();

      if(lemail=="" || lpassword == "")
       {
         log("these fields are required ");
       }
      else
      {
        try {
          UserCredential usercredential = await
          FirebaseAuth.instance.signInWithEmailAndPassword(email: lemail, password: lpassword);
          if(usercredential.user != null)
            {
              Navigator.popUntil(context, (route) => route.isFirst);
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const dashboardscreen()));
            }
          } on FirebaseAuthException catch(ex){
          log(ex.code.toString());
        }
      }
    }
    return Scaffold(
      // appBar: AppBar(title: const Center(child: Text("Loginscreen",style: TextStyle(color: Colors.black),)),),
      body: Container(
        height: height *1,
        width: width*1,
        decoration: const BoxDecoration(gradient: LinearGradient(colors: [Colors.lightGreen,Colors.greenAccent,Colors.lightBlueAccent])),
        child: ListView(
          children: [
            const SizedBox(
              height: 40,
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: emailcontroller,
                decoration: const InputDecoration(
                  labelText: "E-mail",
                ),
              ),
            ),

            const SizedBox(
              height: 40,
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: passwordcontroller,
                decoration: const InputDecoration(
                  labelText: "Password",
                ),
              ),
            ),

            const SizedBox(
              height: 40,
            ),

                Column(
                  children: [
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(disabledForegroundColor: Colors.orange,shadowColor: Colors.blue,elevation: 10),
                      onPressed: (){
                        loggingin();
                      },
                      child: const Text("Login",style: TextStyle(color: Colors.black,fontSize :25)),),
                    const SizedBox(height: 20,),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(disabledForegroundColor: Colors.orange,shadowColor: Colors.blue,elevation: 10),
                      onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context) => const signupscreen()),);},
                      child: const Text("Sign Up",style: TextStyle(color: Colors.black,fontSize :25)),),
                  ],
                ),
              ],
        ),
      ),
    );
  }

}