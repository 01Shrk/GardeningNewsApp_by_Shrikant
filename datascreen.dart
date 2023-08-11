import 'package:flutter/material.dart';
class datascreen extends StatefulWidget{
  @override
  State<datascreen> createState()=> datascreenstate();
}
class datascreenstate extends State<datascreen>
{
  @override
  Widget build(BuildContext context) {
    double height  = MediaQuery.of(context).size.height;
    double width  = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.lightGreen.shade50,
      appBar: AppBar(title: const Center(child: Text("Summary")),),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Center(
                  child:
                  RichText(text: const TextSpan(text: " Sustainable and Innovative Gardening : -----------------------------------------",style: TextStyle(color: Colors.black,fontSize: 30)))),
            const Text("How to Make Compost to Feed Your Plants and Reduce Waste",style: TextStyle(fontSize: 23),),
             Container(
               decoration: const BoxDecoration(image: DecorationImage(image:AssetImage("assets/Vegetable-Gardening-June-2021_v4-12.jpg"),fit: BoxFit.cover)),
               width: 360,
               height: 400,
             ),
              const Text("A well-ventilated spot that gets at least 5 hours of direct sunlight through the day. It can be in your balcony, your terrace, outside your home in your garden or even your window boxes. Seedling trays or small planters, or small paper/plastic cups to germinate seeds indoors for a good produce",style: TextStyle(fontSize: 25),),
            ],
          )),
    );
  }

}