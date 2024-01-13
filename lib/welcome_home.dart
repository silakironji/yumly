import 'package:flutter/material.dart';

class WelcomeHomePage extends StatefulWidget {
  const WelcomeHomePage({super.key});



  @override
  State<WelcomeHomePage> createState() => _WelcomeHomePageState();
}

class _WelcomeHomePageState extends State<WelcomeHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
      color: Colors.white,
      child:Column(
        mainAxisAlignment:MainAxisAlignment.spaceEvenly ,
        crossAxisAlignment:CrossAxisAlignment.start ,
      children: [  
      ClipRRect(
        child: Container(
          color: Colors.amber,
          height: 120,
          width: 120,
          child: Icon(
            Icons.ac_unit,
            size: 50,
            color: Colors.white,
          ),
        ),
      ),

      Text(
        "Hey Wecome Back!", 
        style: TextStyle(
          fontSize: 24, 
      decoration: TextDecoration.none, 
      color:Colors.black,
      ),),
      ],
      )
    );
    
}
}