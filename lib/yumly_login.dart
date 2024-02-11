import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});


  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Color.fromARGB(255, 255, 255, 255),
          child: SafeArea(
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.end, children: [
            (Image.asset(
              'assets/images/yumly.jpg',
              fit: BoxFit.contain,
              width: 160,
              height: 160,
            )),
            const Padding(
              padding:EdgeInsets.all(8.0),
              child: Text(
                "Welcome back to Yumly",
                style: TextStyle(
                    fontSize: 28,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Login and let the feast begin!",
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                      labelText: 'Enter your Email',
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 10,
                      )
                      )
                      ),
                      ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                      labelText: 'Password',
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 10,
                      ))),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Spacer(),
                  Text(
                    "Forgot password?",
                    style: TextStyle(fontSize: 18, color: Color.fromRGBO(36, 130, 50, 1)),
                  ),
                ],
              ),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(36, 130, 50, 1),
                ),
                onPressed: () {
                   Navigator.of(context).pushNamed("/home");
                },
                child: const Text(
                  "Login",
                  style: TextStyle(fontSize: 16, color: Colors.black),
                )),
            const Row(
              children: [
                Expanded(
                  child: Divider(),
    ),
                Padding(
                  padding:EdgeInsets.all(8.0),
                  child: Text(
                    "or",
                    style: TextStyle(fontSize: 19, color: Colors.black),
                    ),
                    ),
                Expanded(
                  child: Divider(),
                  ),
                  ],
                  ),

            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Facebook login option
                  InkWell(
                    onTap: () {
                      // Handle Facebook login
                    },
                    child: Expanded(
                      child: Image.asset(
                        'assets/images/g.png',
                        width: 60, // Replace with the actual path to your Facebook logo
                      ),
                    ),
                  ),
                  // SizedBox(width: 16), // Adjust the spacing between the logos
                  
                  InkWell(
                    onTap: () {
                      // Handle Google login
                    },
                    child: Expanded(
                      child: Image.asset(
                        'assets/images/g.png', 
                        width: 60,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ]
            )
            )
            ),
            );
            }
            }
