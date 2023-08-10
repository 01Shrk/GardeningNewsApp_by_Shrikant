import 'package:flutter/material.dart';

import 'loginscreen.dart';
class homescreen extends StatefulWidget{
  const homescreen({super.key});

  @override
  State<homescreen> createState() => homescreenstate();
  }
  class homescreenstate extends State<homescreen>{
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      // appBar: AppBar(title: Center(child: const Text("HOMESCREEN"))),
      body: Container(
        decoration: const BoxDecoration(gradient: LinearGradient(colors: [Colors.lightGreen,Colors.greenAccent,Colors.lightBlueAccent])),
        height: height* 1,
        width: width* 1,
        child: Center(
          child: ButtonTheme(
            height: 80,minWidth: 100,
            child: OutlinedButton(
               child: const Text("Get Started",style: TextStyle(color: Colors.black,fontSize :25)),
              style: OutlinedButton.styleFrom(disabledForegroundColor: Colors.orange,shadowColor: Colors.blue,elevation: 10),
              onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context) => loginscreen()),);
              },
          ),
        ),
      ),
    ),);
  }
}