import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:canaffor/components/Services.dart';
import "package:canaffor/components/links.dart";

void main() => runApp(MaterialApp(
      home: Canaffor(),
    ));

class Canaffor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Material(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'images/cc.png',
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: <Color>[
                    Colors.blue,
                    Colors.lightBlueAccent,
                  ]),
                  color: Colors.blue,
                ),
              ),
              Customize(Icons.people, "Task force", () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Taskforce()));
              }),
              Customize(Icons.airport_shuttle, "Services", () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Services()));
              }),
              Customize(Icons.trending_up, "Our partners", () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Partners()));
              }),
              Customize(Icons.info, "About", () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => About()));
              }),
              Customize(Icons.perm_media, "Social Media", () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Socialmedia()));
              }),
              Customize(Icons.content_paste, "Submit your CV!", () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Cur()));
              }),
            ],
          ),
        ),
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Canaffor Corporation"),
          centerTitle: true,
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Image.asset('images/cc.png', width: 320, height: 320),
                FloatingActionButton.extended(
                  onPressed: Launchurl,
                  icon: Icon(Icons.thumb_up),
                  label: Text("Visit us"),
                )
              ],
            ),
          ],
        ));
  }
}

class Customize extends StatelessWidget {
  Customize(this.icons, this.text, this.onTap);

  IconData icons;
  String text;
  Function onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 75,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    icons,
                    color: Colors.blueAccent,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    text,
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Taskforce extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Task Force"),
      ),
      body: ListWheelScrollView(
        children: <Widget>[
          Image.asset('images/cc.png', width: 320, height: 320),
          Image.asset('images/ok.jpg', width: 320, height: 320),
          Image.asset('images/ga.jpg', width: 320, height: 320),
          Image.asset('images/ok.jpg', width: 320, height: 320),
          Image.asset('images/ga.jpg', width: 320, height: 320),
          Image.asset('images/ok.jpg', width: 320, height: 320),
          Image.asset('images/ga.jpg', width: 320, height: 320),
          Image.asset('images/cc.png', width: 320, height: 320),
        ],
        itemExtent: 120,
        useMagnifier: true,
        magnification: 1.2,
      ),
    );
  }
}

class Services extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: Text("Services"),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 640,
            child: Products(),
          ),
        ],
      ),
    );
  }
}

class Partners extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget imagecar = Container(
      height: 200,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          Image.asset('partners/1.jpg'),
          Image.asset('partners/2.jpg'),
          Image.asset('partners/1.jpg'),
          Image.asset('partners/6.png'),
        ],
        autoplay: true,
        dotSize: 5.0,
        indicatorBgPadding: 10,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
      ),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Partners"),
      ),
      body: ListView(
        children: <Widget>[
          imagecar,
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Partners",
              style: TextStyle(fontSize: 22),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20.0),
            height: 170.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                    width: 160.0,
                    child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQXLeqZ30jGWoSe1VB5lj-NfYqcMK6B2oVJ4rWABvuinT0VIYdc')),
                Container(
                    width: 160.0,
                    child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS6uuHDQGTceMwdoItNIMwKHOALCwSRxEik3yz0Qhl53aoG2vlM')),
                Container(
                    width: 160.0,
                    child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQgCkpSJmc4LY41e3ErmxliIwWBCNbhR_ijoCo69k0sRXGFB5xx')),
                Container(
                    width: 160.0,
                    child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSVLb64Wgj0yUnA5lRWRZSH4FS-G3QXd4sWFTKEqSh-MPR8Gn4x')),
                Container(
                    width: 160.0,
                    child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSO_QYtTqp4xdjMxzNFYY06DlGgvNT5s5OUuiq5OmqBV-KU71w3')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        title: Text("About"),
      ),
      body: Center(
        child: Text(
          "About us",
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}

class Cur extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Submit CV"),
        ),
        body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.yellow, Colors.orange])),
            child: Center(
              child: Column(children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    child: Container(
                        height: 500,
                        child: ListTile(
                          title: Container(
                            decoration: BoxDecoration(
                              color: Colors.red,
                            ),
                            child: Align(alignment: Alignment.center,
                              child: Text("Tap to submit CV",
                                style: TextStyle(
                                    color: Colors.grey[800],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30
                                ),),
                            ),
                          ),
                        )),
                    onTap: Curriculum,
                  ),
                ),

              ]),
            )));
  }
}

class Socialmedia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Follow us below!"),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.red, Colors.blue])),
        child: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: Facebook,
                  child: Container(
                      width: 150,
                      child: ListTile(
                        title: Container(child: Image.asset('Lnks/fb.png')),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: Twitter,
                  child: Container(
                      width: 150,
                      child: ListTile(
                        title: Container(child: Image.asset('Lnks/tw.png')),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: Instagram,
                  child: Container(
                      width: 150,
                      child: ListTile(
                        title: Container(child: Image.asset('Lnks/insta.png')),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
