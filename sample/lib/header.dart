import 'package:flutter/material.dart';

class Header extends StatelessWidget{
  const Header({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const <Widget>[
          Center(
            child: Text(
              "Applore Technologies",
            style: TextStyle(
              color: Colors.white,
              fontSize: 40,
            ),),
          ),
          SizedBox(height: 10,),
          Center(
            child: Text("Welcome you to login", style: TextStyle(color: Colors.white, fontSize: 18),),
          ),
        ],
      ),
    );
  }
}