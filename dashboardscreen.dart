import 'package:demoapp/datascreen.dart';
import 'package:flutter/Material.dart';
class dashboardscreen extends StatefulWidget{
  const dashboardscreen({super.key});

  @override
  State<dashboardscreen> createState()=> dashboardscreenstate();
}
class dashboardscreenstate extends State<dashboardscreen>{
  @override
  Widget build(BuildContext context) {
       double height = MediaQuery.of(context).size.height;
       double width = MediaQuery.of(context).size.width;

       return Scaffold(
         backgroundColor: Colors.lightGreen.shade50,
          appBar: AppBar(title: const Center(child: Text("MyFARM"))),
         body: SingleChildScrollView(
           scrollDirection: Axis.vertical,
           child: Column(children: [

                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> datascreen()));
                              },
                              child: Container(
                                margin: const EdgeInsets.all(8.0),
                                    height: 200,
                                    width: 280,
                                    decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("assets/gardeninghome.webp"),fit: BoxFit.cover),color: Colors.amber),
                                child: Column(
                                  children: [
                                    Center(child: RichText(text: TextSpan(text: "Watering Techniques",style: TextStyle(color: Colors.black.withOpacity(0.9),fontSize: 25,fontWeight: FontWeight.w900,backgroundColor: Colors.white.withOpacity(0.7))),)),
                                  ],
                                ),
                                  ),
                            ),

                            GestureDetector(
                              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> datascreen()));},
                              child: Container(
                                margin: const EdgeInsets.all(8.0),
                                height: 200,
                                width: 280,
                                decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("assets/composttechnique.webp"),fit: BoxFit.cover),color: Colors.amber),
                                child: Column(
                                  children: [
                                    Center(child: RichText(text: TextSpan(text: "Composting Techniques",style: TextStyle(color: Colors.black.withOpacity(0.7),fontSize: 25,fontWeight: FontWeight.w900,backgroundColor: Colors.white.withOpacity(0.7))),)),
                                  ],
                                ),
                              ),
                            ),

                            GestureDetector(
                              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> datascreen()));},
                              child: Container(
                                margin: const EdgeInsets.all(8.0),
                                height: 200,
                                width: 280,
                                decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("assets/okra.jpg"),fit: BoxFit.cover),color: Colors.amber),
                                child: Column(
                                  children: [
                                    Center(child: RichText(text: TextSpan(text: "OKRA",style: TextStyle(color: Colors.black.withOpacity(0.7),fontSize: 25,fontWeight: FontWeight.w900,backgroundColor: Colors.white.withOpacity(0.7))),)),
                                  ],
                                ),
                              ),
                            ),

                            GestureDetector(
                              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> datascreen()));},
                              child: Container(
                                margin: const EdgeInsets.all(8.0),
                                height: 200,
                                width: 280,
                                decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("assets/carrots.jpg"),fit: BoxFit.cover),color: Colors.amber),
                                child: Column(
                                  children: [
                                    Center(child: RichText(text: TextSpan(text: "CARROTS",style: TextStyle(color: Colors.black.withOpacity(0.7),fontSize: 25,fontWeight: FontWeight.w900,backgroundColor: Colors.white.withOpacity(0.7))),)),
                                  ],
                                ),
                              ),
                            ),
                                  ],
                        ),
                      ),
                  ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Container(
                 height:3 ,
                 width: width* 1,
                 color: Colors.black,
               ),
             ),//for that black line
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Row(
                 children: [
                   Container(
                     margin: const EdgeInsets.all(8.0),
                     height: 100,
                     width: 100,
                     decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("assets/compost.jpg"))),
                   ),
                   GestureDetector(
                     onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> datascreen()));},
                     child: Container(
                       height: 100,
                       width: width*0.6,
                       color: Colors.lightGreen.shade100,
                       child: const Center(child: Text("MY GARDEN --> ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 27),)),
                     ),
                   ),
                 ],
               ),
             ),//
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Row(
                 children: [
                   Container(
                     margin: const EdgeInsets.all(8.0),
                     height: 100,
                     width: 100,
                     decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("assets/tomatoes.jpg"))),
                   ),
                   GestureDetector(
                     onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> datascreen()));},
                     child: Container(
                       height: 100,
                       width: width*0.6,
                       color: Colors.lightGreen.shade100,
                       child: const Text("GROWING TOMATOES       ------------------------------------Learn how to grow tomatoes -->",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                     ),
                   ),
                 ],
               ),
             ),//

             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Row(
                 children: [
                   Container(
                     margin: const EdgeInsets.all(8.0),
                     height: 100,
                     width: 100,
                     decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("assets/growpotatoes.jpg"))),
                   ),
                   GestureDetector(
                     onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> datascreen()));},
                     child: Container(
                       height: 100,
                       width: width*0.6,
                       color: Colors.lightGreen.shade100,
                       child: const Text("GROWING POTATOES       ------------------------------------Learn how to grow potatoes -->",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                     ),
                   ),
                 ],
               ),
             ),

             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Row(
                 children: [
                   Container(
                     margin: const EdgeInsets.all(8.0),
                     height: 100,
                     width: 100,
                     decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("assets/okra.jpg"))),
                   ),
                   GestureDetector(
                     onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> datascreen()));},
                     child: Container(
                       height: 100,
                       width: width*0.6,
                       color: Colors.lightGreen.shade100,
                       child: const Text("GROWING OKRA'S         ------------------------------------Learn how to grow   okra's   -->",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                     ),
                   ),
                 ],
               ),
             ),

             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Row(
                 children: [
                   Container(
                     margin: const EdgeInsets.all(8.0),
                     height: 100,
                     width: 100,
                     decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("assets/carrots.jpg"))),
                   ),
                   GestureDetector(
                     onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> datascreen()));},
                     child: Container(
                       height: 100,
                       width: width*0.6,
                       color: Colors.lightGreen.shade100,
                       child: const Text("GROWING CARROTS         ------------------------------------Learn how to grow carrots    -->",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                     ),
                   ),
                 ],
               ),
             ),
           ],
           ),
         ),

       );
  }
  }