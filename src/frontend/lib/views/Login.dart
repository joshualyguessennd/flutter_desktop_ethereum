import 'package:email_validator/email_validator.dart';
import "package:flutter/material.dart";

class Home extends StatefulWidget {
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff8f5f4),
      body: Column(
        
        children: [
          SizedBox(height: 45),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 350,
                child: Image(
                  height: 400,
                  image: AssetImage('assets/image/insight.png'),
                ),
              ),
              
              ClipRRect(
                borderRadius: BorderRadius.circular(5.0),
                child: Container(
                  height: 580,
                  width: 480,
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0),
                        child: Text(
                          'Gusto',
                          style: TextStyle(
                              fontFamily: "avenir",
                              color: Color(0xffBD413E),
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0),
                        child: Text(
                          'Welcone back to Gusto',
                          style: TextStyle(
                              fontFamily: "avenir",
                              color: Color(0xff0F2A29),
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0),
                        child: Row(
                          children: [
                            Text(
                              'New here?',
                              style: TextStyle(
                                  fontFamily: "avenir",
                                  color: Color(0xff0F2A29),
                                  fontSize: 12),
                            ),
                            InkWell(
                              onTap: () {},
                              hoverColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              splashColor: Colors.transparent,
                              child: Text(
                                ' Create an account',
                                style: TextStyle(
                                    fontFamily: "avenir",
                                    color: Color(0xff45A3A4),
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 25),
                      Padding(
                        padding: const EdgeInsets.only(left: 35, right: 35),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Email'),
                            SizedBox(height: 10),
                            TextFormField(
                              validator: (value) {
                                if (!EmailValidator.validate(value)) {
                                  return '';
                                }
                              },
                              decoration: InputDecoration(
                                errorStyle: TextStyle(fontSize: 9, height: 0.1),
                                filled: true,
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.grey[300], width: 0.7),
                                ),
                                focusColor: Colors.grey[300],
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.grey, width: 0.7)),
                                hintStyle: TextStyle(fontWeight: FontWeight.w200),
                                contentPadding:
                                    EdgeInsets.only(left: 15.0, bottom: 15.0),
                              ),
                            ),
                            SizedBox(height: 16),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Password'),
                                Text(
                                  'Forgot your password?',
                                  style: TextStyle(
                                      fontFamily: "avenir",
                                      color: Color(0xff45A3A4),
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            SizedBox(height: 10),
                            TextFormField(
                              validator: (value) {
                                if (!EmailValidator.validate(value)) {
                                  return '';
                                }
                              },
                              decoration: InputDecoration(
                                errorStyle: TextStyle(fontSize: 9, height: 0.1),
                                filled: true,
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.grey[300], width: 0.7),
                                ),
                                focusColor: Colors.grey[300],
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.grey, width: 0.7)),
                                hintStyle: TextStyle(fontWeight: FontWeight.w200),
                                contentPadding:
                                    EdgeInsets.only(left: 15.0, bottom: 15.0),
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Checkbox(
                                  value: _isChecked,
                                  hoverColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  checkColor: Colors.white,
                                  activeColor: Color(0xff45A3A4),
                                  onChanged: (bool value) {
                                    setState(() {
                                      _isChecked = value;
                                    });
                                  },
                                ),
                                SizedBox(width: 10),
                                Text(
                                  'Remember me',
                                  style: TextStyle(
                                      fontFamily: "avenir",
                                      color: Color(0xff0F2A29),
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                  height: 50,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      color: Color(0xff45A3A4),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Center(
                                    child: Text(
                                      'Sign in',
                                      style: TextStyle(
                                          fontFamily: "avenir",
                                          color: Color(0xffF1EEED),
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )),
                            ),
                            SizedBox(height: 20),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 170,
                                  child: Center(
                                    child: Divider(
                                      height: 0.3,
                                      color: Colors.grey,
                                      thickness: 2,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text('or sign in with'),
                                ),
                                Container(
                                  width: 150,
                                  child: Divider(
                                    height: 0.3,
                                    color: Colors.grey,
                                    thickness: 2,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 20),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                  height: 40,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        width: 0.6,
                                      ),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Center(
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Image(
                                          height: 20,
                                          image: AssetImage('assets/image/google.png')
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          'Google',
                                          style: TextStyle(
                                              fontFamily: "avenir",
                                              color: Color(0xff45A3A4),
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  )),
                            ),
                            SizedBox(
                              height: 8
                            ),
                            Row(
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                      height: 40,
                                      width: 200,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                            width: 0.6,
                                          ),
                                          borderRadius: BorderRadius.circular(5)),
                                      child: Center(
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Image(
                                              height: 20,
                                              image: AssetImage('assets/image/twitter.png')
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              'Twitter',
                                              style: TextStyle(
                                                  fontFamily: "avenir",
                                                  color: Color(0xff45A3A4),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      )),
                                ),
                                SizedBox(width: 10),
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                      height: 40,
                                      width: 200,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                            width: 0.6,
                                          ),
                                          borderRadius: BorderRadius.circular(5)),
                                      child: Center(
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Image(
                                              height: 20,
                                              image: AssetImage('assets/image/facebook.png')
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              'Facebook',
                                              style: TextStyle(
                                                  fontFamily: "avenir",
                                                  color: Color(0xff45A3A4),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      )),
                                ),

                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Image(
                image: AssetImage('assets/image/capture1.png'),
              )
            ],
          ),
        ],
      ),
    );
  }
}
