import 'package:flutter/material.dart';
import 'package:uas_dianm/loginpage.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.purple[700],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(15, 110, 0, 0),
                  child: Text('Exited?!',
                      style: TextStyle(
                        fontFamily: 'Milonga',
                        fontSize: 80,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      )),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(16, 200, 0, 0),
                  child: Text('You should be !!!',
                      style: TextStyle(
                        fontFamily: 'Milonga',
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      )),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Container(
            padding: EdgeInsets.fromLTRB(35, 10, 0, 0),
            child: Text('Sign in if you already have an account with us',
                style: TextStyle(
                  fontFamily: 'Oxygen',
                  fontSize: 15,
                  color: Colors.white38,
                )),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(15, 10, 15, 0),
            height: 50,
            child: Material(
              borderRadius: BorderRadius.circular(30),
              shadowColor: Colors.black54,
              color: Colors.white,
              elevation: 7,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
                child: Center(
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Oxygen',
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.fromLTRB(35, 10, 0, 0),
            child: Text('Or Sign Up if you are new ! ^^',
                style: TextStyle(
                  fontFamily: 'Oxygen',
                  fontSize: 15,
                  color: Colors.white38,
                )),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(15, 10, 15, 0),
            height: 50,
            child: Material(
              borderRadius: BorderRadius.circular(30),
              shadowColor: Colors.black54,
              color: Colors.white,
              elevation: 7,
              child: GestureDetector(
                onTap: () {},
                child: Center(
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                        fontFamily: 'Oxygen',
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
