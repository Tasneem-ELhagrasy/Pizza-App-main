import 'package:flutter/material.dart';

import 'menu_page.dart';

class SignIn extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Positioned.fill(
            child: Image.asset(
              "images/background.jpg",
              fit: BoxFit.cover,
              color: Colors.black.withOpacity(0.5),
              colorBlendMode: BlendMode.darken,
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // signin
              Text(
                'SignIn',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.blueGrey,
                ),
              ),
              SizedBox(
                width: 70,
              ),
              //  signup
              Text(
                'SignUp',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  TextField(
                    controller: emailController,
                    obscureText: false,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                    decoration: InputDecoration(
                        hintText: 'Email',
                        hintStyle: TextStyle(fontSize: 20, color: Colors.white),
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.blueGrey,
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.blueGrey),
                        )),
                  ),
                  TextField(
                    obscureText: true,
                    style: TextStyle(color: Colors.white),
                    controller: passwordController,
                    decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle: TextStyle(fontSize: 20, color: Colors.white),
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.blueGrey,
                        ),
                        suffixIcon: const Icon(
                          Icons.visibility_off,
                          color: Colors.blueGrey,
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.blueGrey),
                        )),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        String email = emailController.text;
                        String password = passwordController.text;

                        if (email == 'doaaabdelaziz@gmail.com' &&
                            password == 'doaa') {
                          navigateToMenuPage(context);
                        } else {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: const Text(
                                  'Invalid Credentials',
                                  style: TextStyle(color: Colors.black),
                                ),
                                content: const Text(
                                  'Please enter valid email and password.',
                                  style: TextStyle(color: Colors.black),
                                ),
                                actions: [
                                  TextButton(
                                    child: const Text(
                                      'OK',
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.black),
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                ],
                              );
                            },
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        backgroundColor: Colors.blueGrey,
                      ),
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  static void navigateToMenuPage(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return MenuPage();
    }));
  }
}
