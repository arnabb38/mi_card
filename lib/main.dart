import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:miCard/constant.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

_launchURL(url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFE232123),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 5.0,
              ),
              CircleAvatar(
                radius: 90.0,
                backgroundColor: kPrimaryColor,
                child: CircleAvatar(
                  radius: 85.0,
                  backgroundImage: AssetImage('images/joker.jpg'),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFE232123),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30.0),
                      topLeft: Radius.circular(30.0),
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        'Arnab Basak',
                        style: TextStyle(
                          fontSize: 40.0,
                          color: Colors.white,
                          letterSpacing: 4.5,
                          fontFamily: 'IndieFlower',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'SOFTWARE DEVELOPER',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2.5,
                          fontFamily: 'IndieFlower',
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          _launchURL('https://github.com/arnabb38');
                        },
                        icon: Icon(
                          LineAwesomeIcons.github,
                          color: kPrimaryColor,
                          size: 40.0,
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xFE1A1C21),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(30.0),
                              topLeft: Radius.circular(30.0),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Card(
                                color: Colors.transparent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(35),
                                  side: kCardShapeStyle,
                                ),
                                margin: EdgeInsets.symmetric(
                                  vertical: 10.0,
                                  horizontal: 30.0,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: ListTile(
                                    leading: Icon(
                                      LineAwesomeIcons.location_arrow,
                                      color: kPrimaryColor,
                                      size: 30.0,
                                    ),
                                    title: Text(
                                      'Dhaka, Bangladesh',
                                      style: kTextCardStyle,
                                    ),
                                  ),
                                ),
                              ),
                              Card(
                                color: Colors.transparent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(35),
                                  side: kCardShapeStyle,
                                ),
                                margin: EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 30.0),
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: ListTile(
                                    leading: Icon(
                                      CupertinoIcons.mail,
                                      color: kPrimaryColor,
                                      size: 30.0,
                                    ),
                                    title: Text(
                                      'arnabbasak896@gmail.com',
                                      style: kTextCardStyle,
                                    ),
                                  ),
                                ),
                              ),
                              Card(
                                color: Colors.transparent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(35),
                                  side: kCardShapeStyle,
                                ),
                                margin: EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 30.0),
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: ListTile(
                                    leading: Icon(
                                      // Icons.link,
                                      LineAwesomeIcons.linkedin_square,
                                      color: kPrimaryColor,
                                      size: 30.0,
                                    ),
                                    title: Text(
                                      'linkedin.com/in/arnab-basak',
                                      style: kTextCardStyle,
                                    ),
                                  ),
                                ),
                              ),
                              Card(
                                color: Colors.transparent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(35),
                                  side: kCardShapeStyle,
                                ),
                                margin: EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 30.0),
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: ListTile(
                                    leading: Icon(
                                      LineAwesomeIcons.skype,
                                      color: kPrimaryColor,
                                      size: 30.0,
                                    ),
                                    title: Text(
                                      'skype/arnabbasak7',
                                      style: kTextCardStyle,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
