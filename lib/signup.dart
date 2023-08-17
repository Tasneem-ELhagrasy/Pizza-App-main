import 'package:flutter/material.dart';

import 'menu_page.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

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
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 70,
              ),
              //  signup
              Text(
                'SignUp',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.blueGrey,
                ),
              )
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          prefixIcon: const Icon(
                            Icons.person_outline,
                            color: Colors.blueGrey,
                          ),
                          hintText: 'Name',
                          hintStyle:
                              TextStyle(fontSize: 20, color: Colors.white),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.blueGrey),
                          )),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      obscureText: false,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          prefixIcon: const Icon(
                            Icons.phone_outlined,
                            color: Colors.blueGrey,
                          ),
                          hintText: 'Phone Number',
                          hintStyle:
                              TextStyle(fontSize: 20, color: Colors.white),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.blueGrey),
                          )),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      obscureText: false,
                      style: TextStyle(fontSize: 20, color: Colors.white),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          prefixIcon: const Icon(
                            Icons.email_outlined,
                            color: Colors.blueGrey,
                          ),
                          hintText: 'E-mail',
                          hintStyle:
                              TextStyle(fontSize: 20, color: Colors.white),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.blueGrey),
                          )),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      obscureText: true,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          prefixIcon: const Icon(
                            Icons.lock_outline,
                            color: Colors.blueGrey,
                          ),
                          suffixIcon: Icon(
                            Icons.visibility_off,
                            color: Colors.blueGrey,
                          ),
                          hintText: 'Password',
                          hintStyle:
                              TextStyle(fontSize: 20, color: Colors.white),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.blueGrey),
                          )),
                    ),
                    SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => const MenuPage()));
                        },
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            backgroundColor: Colors.blueGrey),
                        child: const Text(
                          'SignUp',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
