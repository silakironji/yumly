import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.grey,
          child: SafeArea(
              child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
            (Image.asset(
              'assets/images/yumly.jpg',
              fit: BoxFit.contain,
              width: 160,
              height: 160,
            )),
            const Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Welcome back to Yumly",
                style: TextStyle(fontSize: 28, color: Colors.black),
              ),
            ),
            const Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Login and let the feast begin!",
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Enter your Email',
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 10,
                  ))),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 10,
                  ))),
            ),

            const Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Forgot password?",
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),
            ElevatedButton(
                    onPressed: () {},
                   child:Container(
              
                    style:ButtonStyleButton(backgroundColor: MaterialStateProperty.all<Color>(Colors.blue)),
                  child: const Text(
                    "Login",
                    style: TextStyle(fontSize: 16, color: Colors.black),
                      
                  ),  
                   ) ),       
            const Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "or",
                style: TextStyle(fontSize: 19, color: Colors.black),
              ),
            ),
           Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Facebook login option
                  InkWell(
                    onTap: () {
                      // Handle Facebook login
                    },
                    child: Image.asset(
                      'assets/images/facebook.png', // Replace with the actual path to your Facebook logo
                      width: 160,
                      height: 160,
                    ),
                  ),
                  SizedBox(width: 16), // Adjust the spacing between the logos
                  // Google login option
                  InkWell(
                    onTap: () {
                      // Handle Google login
                    },
                    child: Image.asset(
                      'assets/images/google.png', // Replace with the actual path to your Google logo
                      width: 160,
                      height: 160,
                    ),
                  ),
                ],
              ),


          ]
          )
          )
          ),
    );
  }
}
