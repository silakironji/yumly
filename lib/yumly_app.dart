import 'package:flutter/material.dart';
import 'package:yumly/checkout.dart';
import 'package:yumly/welcome_home.dart';
import 'package:yumly/yumly_login.dart';



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yumly',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
     initialRoute: "/",
     routes: <String, WidgetBuilder>{
      "/":(context) => LoginPage(),
      // "/login": (context) =>LoginPage(),
      "/home": (context) =>  CheckoutScreen(),
     }
    );
  }
}