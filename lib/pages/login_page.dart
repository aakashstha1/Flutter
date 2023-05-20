import 'package:flutter/material.dart';

import 'package:practice/utils/routes.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(children: [
        Image.asset(
          "assets/images/login.png",
          fit: BoxFit.fill,
        ),
        SizedBox(
          height: 20.0,
        ),
        Text(
          "Welcome to Login Page!",
          style: TextStyle(
            color: Colors.deepPurple,
            fontWeight: FontWeight.bold,
            fontSize: 20,
            fontStyle: FontStyle.italic,
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter username",
                    labelText: "Username",
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter password",
                    labelText: "Password",
                  ),
                )
              ],
            )),
        SizedBox(
          height: 20.0,
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, MyRoutes.homeRoute);
          },
          child: Text(
            "Login",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          style: TextButton.styleFrom(minimumSize: Size(100, 50)),
        )
      ]),
    );
  }
}
