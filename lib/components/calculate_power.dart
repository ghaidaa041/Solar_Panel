import 'package:flutter/material.dart';

class CalculatePower extends StatefulWidget {
  @override
  _CalculatePowerState createState() => _CalculatePowerState();
}

class _CalculatePowerState extends State<CalculatePower> {
  @override

  String valueChoose;
  String valueChoose2;
  List ListItem2 = ['Jeddah','Makkah','Riyadh','Dammam'];

  List ListItem = ['1 Panel','2 Panels','3 Panels','4 Panels'];


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
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60 ),
              child: DropdownButton(
                hint: Text('select the number of Panel'),
                value: valueChoose,
                onChanged: (newValue){
                  setState(() {
                    valueChoose = newValue ;
                  });
                },
                items: ListItem.map((valueItem) {
                  return DropdownMenuItem(
                    value: valueItem,
                    child: Text(valueItem),
                  );
                }).toList(),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 60 ),
              child: DropdownButton(
                hint: Text('select the city'),
                value: valueChoose2,
                onChanged: (newValue){
                  setState(() {
                    valueChoose2 = newValue ;
                  });
                },
                items: ListItem2.map((valueItem) {
                  return DropdownMenuItem(
                    value: valueItem,
                    child: Text(valueItem),
                  );
                }).toList(),
              ),
            ),
            SizedBox(height: 60,),
            Text("The Power is 50W" ,  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18) )
          ],

        ),
      ),
    );
  }
}
