import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.deepPurple[700],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(110, 50, 15, 0),
            child: CircleAvatar(
              radius: 72.0,
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage('assets/images/dian.png'),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Text('Login',
                style: TextStyle(
                  fontFamily: 'Gabriela',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                )),
          ),
          Container(
            padding: EdgeInsets.only(top: 35, left: 20, right: 20),
            child: Form(
              key: formKey,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please Enter Valid Email';
                      }
                      return null;
                    },
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    autofocus: false,
                    cursorColor: Colors.red,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Email Address',
                      hintStyle: TextStyle(fontSize: 13, fontFamily: 'Oxygen'),
                      contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.circular(35)),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  TextFormField(
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please Enter Valid Password';
                      }
                      return null;
                    },
                    obscureText: true,
                    autofocus: false,
                    cursorColor: Colors.red,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Password',
                      hintStyle: TextStyle(fontSize: 13, fontFamily: 'Oxygen'),
                      contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.circular(35)),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 50,
                    child: Material(
                      borderRadius: BorderRadius.circular(30),
                      shadowColor: Colors.red[800],
                      color: Colors.red[800],
                      elevation: 7.0,
                      child: GestureDetector(
                        onTap: () {
                          if (formKey.currentState.validate()) ;
                        },
                        child: Center(
                          child: Text(
                            'Login',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Oxygen'),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    alignment: Alignment.center,
                    child: InkWell(
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                            color: Colors.white60,
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                            fontFamily: 'Gabriela',
                            decoration: TextDecoration.underline),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                onTap: () {},
                child: Text(
                  'Register Here!',
                  style: TextStyle(
                      color: Colors.red[500],
                      fontFamily: 'Milonga',
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      decoration: TextDecoration.none),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
