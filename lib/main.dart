import 'package:festival_poster/edit.dart';
import 'package:festival_poster/gridlist.dart';
import 'package:festival_poster/save.dart';
import 'package:festival_poster/util.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => HomePage(),
        "gridlist": (context) => DetailPage(),
        "edit": (context) => EditPage(),
        "save": (context) => SavePage(),
      },
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Festival Posters",
          style: TextStyle(
            color: Colors.cyanAccent,
            letterSpacing: 7,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            child: Image.asset(
              "images/bg.jpg",
              height: 755,
              // width: 400,
              fit: BoxFit.cover,
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: homeScr.map((e) {
                return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "gridlist", arguments: e);
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 80,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.white38,
                      borderRadius: BorderRadius.horizontal(
                        right: Radius.circular(30),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        e,
                        style: TextStyle(
                          fontSize: 20,
                          letterSpacing: 3,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          )
        ],
      ),
    );
  }
}