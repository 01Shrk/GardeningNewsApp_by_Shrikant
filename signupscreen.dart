import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
class signupscreen extends StatefulWidget{
  const signupscreen({super.key});

  @override
  State<signupscreen> createState() => signupscreenstate();
}
class signupscreenstate extends State<signupscreen>{
  @override
  Widget build(BuildContext context) {
    TextEditingController emailcontroller = TextEditingController();
    TextEditingController new_passwordcontroller = TextEditingController();
    TextEditingController confirm_passwordcontroller = TextEditingController();

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    void createaccount()async{
      String email  = emailcontroller.text.trim();
      String password  = new_passwordcontroller.text.trim();
      String confirmpass  = confirm_passwordcontroller.text.trim();

      if(email =="" || password =="" || confirmpass =="")
          log("Please fill the details");
      else if(password != confirmpass)
        log("Passwords do not match");
      else
        {
          try{
            UserCredential userCredential = await
            FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
            log("Account Created Succesfully");
            if(userCredential.user != null)
              {
                Navigator.pop(context);
              }
          }

          on  FirebaseAuthException catch(ex)
          {
            log(ex.code.toString());
          }
        }
    }

    return Scaffold(
      // appBar: AppBar(title: const Center(child: Text("SignUpscreen",style: TextStyle(color: Colors.black),)),),
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
                controller: new_passwordcontroller,
                decoration: const InputDecoration(
                  labelText: "New Password",
                ),
              ),
            ),

            const SizedBox(
              height: 40,
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: confirm_passwordcontroller,
                decoration: const InputDecoration(
                  labelText: "Confirm Password",
                ),
              ),
            ),

            const SizedBox(
              height: 40,
            ),

            Column(
              children: [
                OutlinedButton(
                  child: const Text("Create Account",style: TextStyle(color: Colors.black,fontSize :25)),
                  style: OutlinedButton.styleFrom(disabledForegroundColor: Colors.orange,shadowColor: Colors.blue,elevation: 10),
                  onPressed: (){
                    createaccount();
                  },),
              ],
            ),
          ],
        ),
      ),
    );
  }

}