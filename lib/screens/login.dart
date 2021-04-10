import 'package:banking_app/screens/home.dart';
import 'package:banking_app/screens/reg.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TextFormField(
            decoration: InputDecoration(
              hintText: "Username",
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: "Password",
            ),
          ),
          FlatButton(
            onPressed: () {
              //  Navigator.pushReplacement(context,
              //       MaterialPageRoute(builder: (context) => HomeScreen()));
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeScreen()));
            },
            child: Text(
              "Login",
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.black,
          ),
          Row(children: [
            Text("Don't have an Account?"),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => RegisterScreen()));
              },
              child: Text(
                "Register Here?",
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ),
          ])
        ],
      ),
    );
  }
}
