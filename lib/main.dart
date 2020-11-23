import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'custom_buttons.dart';

void main() => runApp(MTN());

class MTN extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Color(0xFFB5BAB7)),
      home: MtnPage(),
    );
  }
}

class MtnPage extends StatefulWidget {
  @override
  _MtnPageState createState() => _MtnPageState();
}

class _MtnPageState extends State<MtnPage> {
  TextEditingController _controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(5.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.public,
                      size: 40,
                    ),
                    Text(' '),
                    Text(
                      'Nigeria',
                      style: TextStyle(fontSize: 25.0),
                    ),
                    Expanded(child: Container()),
                    Transform(
                      transform: Matrix4.rotationZ(
                          0.785), //Rotate by 45 degrees in radians
                      child: Icon(
                        Icons.airplanemode_active,
                        size: 40.0,
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          'Quick   ',
                          style: TextStyle(fontSize: 25),
                        ),
                        Text(
                          ' Tour',
                          style: TextStyle(fontSize: 25),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(height: 50.0),
                Container(
                  child: Image.asset('images/mtnsmall.png'),
                ),
                SizedBox(height: 20.0),
                Text(
                  'everywhere you go',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 25.0,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                // Text(
                //   'This is Google Fonts',
                //   style: GoogleFonts.lato(
                //     textStyle: TextStyle(fontSize: 40.0),
                //   ),
                // ),
                SizedBox(height: 10.0),
                Text(
                  'Welcome',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 2.0,
                  ),
                ),
                // Text(
                //   'Welcome',
                //   style: TextStyle(
                //     fontSize: 25,
                //     fontWeight: FontWeight.w400,
                //     fontFamily: 'Lato',
                //     letterSpacing: 2.0,
                //   ),
                // ),
                SizedBox(height: 30.0),
                TextField(
                  controller: _controller,
                  cursorColor: Colors.black,
                  keyboardType: TextInputType.number,
                  style: TextStyle(
                    fontSize: 25,
                  ),
                  decoration: InputDecoration(
                    labelText: '     Phone Number',
                    labelStyle: TextStyle(
                      fontSize: 20,
                    ),

                    //errorText: 'error',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
                CustomButtons(
                  text: 'Proceed',
                  size: 30.0,
                  colour: Colors.yellow,
                  //colour: Color(0xFFCD067),
                ),
                SizedBox(height: 150.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomButtons(
                      text: '  Find a Store  ',
                      colour: Color(0xFFE2E1DE),
                      size: 25.0,
                    ),
                    CustomButtons(
                      text: '  Chat with us  ',
                      colour: Colors.grey,
                      size: 25.0,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
