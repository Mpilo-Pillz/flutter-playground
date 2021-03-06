import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  Widget build(context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Form(
          child: Column(
        children: [emailField(), passwordField(), submitButton()],
      )),
    );
  }

  Widget emailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          labelText: 'Email Address', hintText: 'you@example.com'),
    );
  }

  Widget passwordField() {
    return Container(
      margin: EdgeInsets.only(bottom: 25.0),
      child: TextFormField(
        obscureText: true,
        decoration:
            InputDecoration(labelText: "Password", hintText: 'Password'),
      ),
    );
  }

  Widget submitButton() {
    return ElevatedButton(
      style:
          ButtonStyle(foregroundColor: MaterialStateProperty.all(Colors.blue)),
      child: Text('Submit'),
      onPressed: () => print("----"),
    );
  }
}
