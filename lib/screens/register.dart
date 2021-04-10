/*import 'package:banking_app/screens/home.dart';
import 'package:banking_app/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:form_field_validator/form_field_validator.dart';


class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _firstName = TextEditingController();
  final _lastName = TextEditingController();
  final _userName = TextEditingController();
  final _cellno = TextEditingController();
  final _email = TextEditingController();
  final _idNumber = TextEditingController();
  final _password = TextEditingController();
  final _confirmpass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TextFormField(
            validator: (String value) {
              if (value.isEmpty) {
                return 'First Name is required';
              }

              if (!RegExp(
                r"^(?<firstchar>(?=[A-Za-z]))((?<alphachars>[A-Za-z])|(?<specialchars>[A-Za-z]['-](?=[A-Za-z]))|(?<spaces> (?=[A-Za-z])))*$").hasMatch(value)) {
                return 'Please enter a valid First Name';
                }

            return null;
            },
            controller: _firstName,
            decoration: InputDecoration(
              hintText: "First Name",
            ),
          ),
          TextFormField(

            validator: (String value) {
              if (value.isEmpty) {
                return 'Last Name is required';
              }

              if (!RegExp(
                r"^(?<firstchar>(?=[A-Za-z]))((?<alphachars>[A-Za-z])|(?<specialchars>[A-Za-z]['-](?=[A-Za-z]))|(?<spaces> (?=[A-Za-z])))*$").hasMatch(value)) {
                return 'Please enter a valid Last Name';
                }

            return null;
            },
            controller: _lastName,
            decoration: InputDecoration(
              hintText: "Last Name",
            ),
          ),
          TextFormField(

            validator: (String value) {
              if (value.isEmpty) {
                return 'Username is required';
              }
              return null;
            },
            controller: _userName,
            decoration: InputDecoration(
              hintText: "Username",
            ),
          ),
          TextFormField(

            keyboardType: TextInputType.phone,
              validator: (String value) {
              if (value.isEmpty) {
                return 'ID Number is Required';
              }
              
              if(!RegExp(r"^(0|[1-9][0-9]*)$").hasMatch(value)){
                return 'Enter Valid ID Number';
              }

            return null;
            },
            controller: _idNumber,
            decoration: InputDecoration(
              hintText: "ID Number",
            ),
          ),
          TextFormField(
            
            keyboardType: TextInputType.phone,
            validator: (String value) {
              if (value.isEmpty) {
                return 'Cellphone number is Required';
              }

               if(!RegExp(r"^(0|[1-9][0-9]*)$").hasMatch(value)){
                return 'Enter Valid Cellphone Number';
              }

              return null;
            },
            controller: _cellno,
            decoration: InputDecoration(
              hintText: "Cellphone Number",
            ),
          ),
          TextFormField(
            validator: EmailValidator(errorText: "Not a valid Email"),
            controller: _email,
            decoration: InputDecoration(
              hintText: "Email address",
            ),
          ),
          TextFormField(

            keyboardType: TextInputType.visiblePassword,
            validator: (String value) {
               if (value.isEmpty) {
                return 'Password is Required';
              }
              
              if(!RegExp(r"^(?=.*?[a-z])(?=.*?[A-Z])(?=.*?[0-9])(?=.*?[!"#\$%&'\(\)\*\+,-\.\/:;<=>\?@[\]\^_`\{\|}~])[a-zA-Z0-9!"#\$%&'\(\)\*\+,-\.\/:;<=>\?@[\]\^_`\{\|}~]{8}$).hasMatch(value)){
                return 'Enter Valid ID Number';
              }

            return null;
            },

            controller: _password,
            decoration: InputDecoration(
              hintText: "Password",
            ),
          ),
          TextFormField(

            keyboardType: TextInputType.visiblePassword,
            validator: (String value) {
              if (value.isEmpty) {
                return 'Password is Required';
              }
              return null;
            },

            controller: _confirmpass,
            decoration: InputDecoration(
              hintText: "Confirm Password",
            ),
          ),
          FlatButton(
            onPressed: () async {
              //  Navigator.pushReplacement(context,
              //       MaterialPageRoute(builder: (context) => HomeScreen()));
              // print(_firstName.text);

              var url = Uri.parse(
                  'https://lamp.ms.wits.ac.za/home/s2092154/bankCli_reg.php');
              var response = await http.post(url, body: {
                'User_Type_ID': '201',
                'Username': _userName.text,
                'Password': _password.text,
                'ID_Number': _idNumber.text,
                'First_Name': _firstName.text,
                'Last_Name': _lastName.text,
                'Phone': _cellno.text,
                'email': _email.text,
              });
              print('Response status: ${response.statusCode}');
              print('Response body: ${response.body}');

              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginScreen()));
            },
            child: Text(
              "Register",
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
*/