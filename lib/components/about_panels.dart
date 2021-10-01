import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class about_panels extends StatefulWidget {
  @override
  _about_panelsState createState() => _about_panelsState();
}

class _about_panelsState extends State<about_panels> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.topCenter, colors: [
                Color(0xFF59C2FF),
                Color(0xFF1270E3),
              ]),
        ),
      ),),
        body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              SizedBox(height: 10,),
              Text("Types of Solar Panels: " , style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              SizedBox(height: 10,),

              Text("• Monocrystalline solar panels ",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              Image.asset("assets/one.jpg"),
              SizedBox(height: 10,),
              Text('The monocrystalline panels have a consistent appearance.\n Since they are made from pure silicon, they can be readily identified by their dark black color as shown in the picture below.\n The use of pure silicon also makes monocrystalline panels the most space-efficient and longest-lasting among all three solar panel types.\n as is evident in the picture.\n These panels are the most expensive types.'
            , style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              SizedBox(height: 30 ,),

              Text("• Polycrystalline solar panels ",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              Image.asset("assets/two.jpg"),
              SizedBox(height: 10,),
              Text("The cells are square mold more affordable\nless efficient in terms of energy conversion, space, and \nhigh-temperature environments since their silicon purity and construction are lower than monocrystalline panels.", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              SizedBox(height: 30 ,),


              Text("• Thin Film ",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              Image.asset("assets/three.jpg"),
              SizedBox(height: 10,),
              Text("As the name implies the panels have very fine layers that are thin enough to be flexible. \nlighter and easier to install. thin-film panels can come in different sizes. However, they are less efficient than typical silicon solar panels. "
                  , style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),

            ],
          ),
        ),
      ),
    );
  }
}
