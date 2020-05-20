import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomPadding: false, // Resize scaffold padding
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Align to start
          children: <Widget>[
            Container(
                padding: EdgeInsets.fromLTRB(20.0,140.0,0.0,0.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Center(
                        child: ImageIcon(AssetImage('assets/rockslogo.png')) // Upload larger img
                      ),
                      SizedBox(width: 15.0), // White space between logo and title
                      Center(
                        child: Text(
                            'Rocks',
                          style: TextStyle(
                            fontSize: 80.0, fontWeight: FontWeight.bold, fontFamily: 'Poppins')
                          )
                        )
                ]
                )
            ),

            Container(
                padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
                child: Column(
                  children: <Widget>[
                    TextField(
                        decoration: InputDecoration( // Makes text float
                            labelText: 'EMAIL',
                            labelStyle: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold,
                                color: Colors.grey
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.orange) // change underline border color when user clicks
                            )
                        )
                    ),
                    SizedBox(height: 20.0), // Spacing between text fields
                    TextField(
                        decoration: InputDecoration( // Makes text float
                            labelText: 'PASSWORD',
                            labelStyle: TextStyle(
                                fontFamily: 'Montserrat', // Download TTF
                                fontWeight: FontWeight.bold,
                                color: Colors.grey
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.orange) // change underline border color when user clicks
                            )
                        ),
                      obscureText: true, // Hide password
                    ),
                    SizedBox(height: 5.0), // Spacing
                    Container(
                      alignment: Alignment(1.0,0.0), // Align text to the right (x,y)
                      padding: EdgeInsets.only(top: 15.0, left: 20.0),
                      child: InkWell(
                        child: Text('Forgot Password', // Reset password field
                        style: TextStyle(
                          color: Colors.orange,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat',
                          decoration: TextDecoration.underline)
                        ),
                      ),
                    ),
                    SizedBox(height:40.0),
                    Container(
                      height: 40.0,
                      child: Material(
                        borderRadius: BorderRadius.circular(20.0), // Round edges
                        shadowColor: Colors.orangeAccent,
                        color: Colors.orange,
                        elevation: 7.0,
                        child: GestureDetector(
                          onTap: () {},
                          child: Center(
                            child: Text(
                              'LOGIN',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat'
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0), // Height of white space between buttons
                    Container(
                      height: 40.0, // Height of the button
                      color: Colors.transparent, // Outline button
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            style: BorderStyle.solid,
                            width: 1.0,
                          ),
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(20.0)
                        ),
                        child: Row( // 2 components inside of a box
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Center(
                              child: ImageIcon(AssetImage('assets/facebook.png'))
                            ),
                            SizedBox(width: 10.0),
                            Center(
                              child: Text('Log in with Facebook',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat'
                              )
                              )
                            )
                          ]
                        )
                      )
                    )
                  ],
                )
            ),
            SizedBox(height: 15.0), // White space
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'New to Rocks?',
                  style: TextStyle(
                    fontFamily: 'Montserrat'
                  ),
                ),
                SizedBox(width: 5.0), // White space
                InkWell(
                  onTap: () {},
                  child: Text('Register',
                  style: TextStyle(
                    color: Colors.orange,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  )
                )
                )
              ]
            )


          ]
      ),
    );
  }
}