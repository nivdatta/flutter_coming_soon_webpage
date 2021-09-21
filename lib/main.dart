import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import "package:simple_icons/simple_icons.dart";

void main(){
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<MyApp> {

  _launchURL() async {
    const url = 'https://twitter.com/nivdatta88';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new Container(
      decoration: BoxDecoration(
      image: DecorationImage(
    image: NetworkImage(
    "https://images.unsplash.com/photo-1526289034009-0240ddb68ce3?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80"),
    fit: BoxFit.cover,
    ),
      ),
        //color: CupertinoColors.black,
        padding: new EdgeInsets.all(16.0),
        child: new Column(
            children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  width: 220,
                  height: 60,
                  child: ElevatedButton(onPressed: _launchURL,
                  style: ElevatedButton.styleFrom(
                      //side: BorderSide(width:1, color:Colors.white),
                      primary: Colors.transparent,
                      /*shape: RoundedRectangleBorder( //to set border radius to button
                          borderRadius: BorderRadius.circular(10)
                      ),*/
                      padding: EdgeInsets.all(20)),
                  child:
                  Row(
                    children: [
                      //SizedBox(width: 5,),
                      CircleAvatar(radius: 30, backgroundColor: Colors.white, child: ClipOval( child: Image.network("https://pbs.twimg.com/profile_images/1424313077978128385/-8ZPfZVE_400x400.jpg")),),
                      //SizedBox(width: 10,),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("By Nivedita Datta", textAlign: TextAlign.left, style: TextStyle(color: Colors.white, fontSize: 15),),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Find Me On Twitter", textAlign: TextAlign.left, style: TextStyle(color: Colors.blue, fontSize: 12),),
                              SizedBox(width: 5,),
                              Icon(SimpleIcons.twitter, color: Colors.blue, size: 12,),
                            ],
                          ),
                        ],
                      ),
                      //Icon(SimpleIcons.twitter, color: Colors.blue, size: 12,),
                      SizedBox(width: 8,),
                    ],
                  )
        ),
                ),
              ],
            ),
        SizedBox(width: 15.0),
              SizedBox(height: 100,),
              Row(children: [
                Icon(Icons.stacked_line_chart_sharp, color: Colors.blue, size: 30,),
                Text(
                  '  WELCOME TO FLUTTER STUDIO',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.lato(
                    textStyle: TextStyle(color: Colors.white, letterSpacing: 1.5),
                  ),
                ),
              ],
              ),
              SizedBox(height: 50,),
              Row(children: [
                Expanded(
                  child: Text(
                    'LOOKING FOR UI INSPIRATION?',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.asap(
                      textStyle: TextStyle(fontSize: 30, color: Colors.blue, letterSpacing: 1, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
              ),
              SizedBox(height: 15,),
              Row(children: [
                Expanded(
                  child: Text(
                    'We are coming up with something big and exciting.',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.asap(
                      textStyle: TextStyle(fontSize: 30, color: Colors.blue, letterSpacing: .5),
                    ),
                  ),
                ),
              ],),
            ],
          ),
      ),
    );
  }
}