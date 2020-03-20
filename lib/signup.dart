import 'package:flutter/cupertino.dart';
import 'package:ngo/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ngo/login.dart';
import 'package:ngo/styles.dart';

class signup extends StatefulWidget {
  @override
  _signupState createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
      child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.1, 0.4, 0.7, 0.9],
                colors: [
                  Color(0xFF3594DD),
                  Color(0xFF4563DB),
                  Color(0xFF5036D5),
                  Color(0xFF5B16D0),
                ],
              ),
            ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 80, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                alignment: Alignment.centerLeft,
                child: IconButton(
                  onPressed: (){},
                  icon: Icon(
                    Icons.arrow_back
                  ),
                  iconSize: 30,
                  color: Colors.grey[700],
                ),
              ),
              SizedBox(height: 60),
              Container(
                alignment: Alignment.centerLeft,
                child: Image(
                  image: AssetImage('assets/images/icon.png'),
                ),
              ),
              SizedBox(height: 20),
              Text('Create a new\n Account',
               style: TextStyle(
                 color: Colors.black54,
                 fontWeight: FontWeight.bold,
                 fontSize: 32.0,
                 letterSpacing: 2,
                 height: 1.5,
               ),
              ),
              SizedBox(height: 10),
              Text(
                '  _____',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.blue,
                  ),
                ),
              SizedBox(height: 20),
              Container(
                child: TextField(
                 decoration: InputDecoration(
                   enabledBorder: OutlineInputBorder(
                     borderSide: BorderSide(color: Colors.transparent),
                     borderRadius: BorderRadius.circular(20),

                   ),
                   prefixIcon: Icon(Icons.person),
                   hintText: "Full Name",
                   hintStyle: TextStyle(
                     color: Colors.black54,
                     fontWeight: FontWeight.bold,
                   ),
                 ),
                ),
                padding: EdgeInsets.fromLTRB(25, 0,25, 0)
              ),
              SizedBox(height: 15),
              Container(
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      prefixIcon: Icon(Icons.mail_outline),
                      hintText: "E-mail",
                      hintStyle: TextStyle(

                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  padding: EdgeInsets.fromLTRB(25, 0,25, 0)
              ),
              SizedBox(height: 15),
              Container(
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      prefixIcon: Icon(Icons.lock),
                      hintText: "Password",
                      hintStyle: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    obscureText: true,
                  ),
                  padding: EdgeInsets.fromLTRB(25, 0,25, 0)
              ),
              SizedBox(height: 35),
              Container(
                padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: RaisedButton(
                onPressed: (){},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: EdgeInsets.all(0.0),
                  child: Ink(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFF3594DD),
                          Color(0xFF4563DB),
                          Color(0xFF5036D5),
                          Color(0xFF5B16D0),
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Container(
                      constraints: BoxConstraints(maxWidth: 400, minHeight: 50),
                      alignment: Alignment.center,
                      child: Text('Create Account',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),

                ),
              ),
              SizedBox(height: 10),
             Container(
               constraints: BoxConstraints(
                 maxWidth: 400, minHeight: 50,
               ),
              padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
               child: RaisedButton.icon(
                 onPressed: (){},
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(30),
                 ),

               icon: Icon(
                 Icons.alternate_email,
               ),
                 label: Text('Sign in with Google',style: TextStyle(fontSize: 17)),
                 color: Colors.white,

               ),
             ),
             //SizedBox(height: 30),
              Container(
                alignment: Alignment.bottomCenter,
               //padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                child: FlatButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => login()),
                    );
                  },
                  child: Text(
                    'Already a User? Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              ],
            ),
          ),
        ),
      ),
      );
  }
}

