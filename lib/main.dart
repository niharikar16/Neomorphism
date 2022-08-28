// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:neumorphism/dark_mode.dart';
import 'package:neumorphism/light_mode.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: const Color.fromARGB(255, 34, 34, 34),
              centerTitle: true,
              title: Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Text("N e o m o r p h i s m",
                    style: GoogleFonts.fredoka(fontSize: 30)),
              ),
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(100),
                child: TabBar(
                  indicatorColor: Colors.white,
                  unselectedLabelColor: Colors.grey.shade500,
                  tabs: [
                    Tab(
                      icon: Icon(Icons.sunny),
                      child: Text(
                        "Light Mode",
                        style: GoogleFonts.josefinSans(),
                      ),
                    ),
                    Tab(
                        icon: Icon(Icons.dark_mode),
                        child: Text(
                          "Dark theme",
                          style: GoogleFonts.josefinSans(),
                        )),
                  ],
                ),
              ),
            ),
            body: TabBarView(children: [
              LightMode(),
              DarkMode(),
            ])),
      ),
    );
  }
}
