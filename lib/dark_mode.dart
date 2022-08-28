import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DarkMode extends StatefulWidget {
  DarkMode({Key? key}) : super(key: key);

  @override
  State<DarkMode> createState() => _DarkModeState();
}

class _DarkModeState extends State<DarkMode> {
  bool _isElevated = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.grey.shade800,
          body: Center(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _isElevated = !_isElevated;
                });
              },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 90),
                height: 200,
                width: 200,
                // ignore: sort_child_properties_last
                child: Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Column(
                    children: [
                      Icon(
                        Icons.favorite,
                        size: 100,
                        color: _isElevated ? Colors.white : Colors.pink,
                      ),
                      Text(
                        "H E L L O",
                        style: GoogleFonts.josefinSans(
                            fontSize: 20,
                            color: _isElevated ? Colors.white : Colors.white),
                      )
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.grey.shade800,
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: _isElevated
                        ? [
                            //background shadow, buttom one is grey, offset is cordinate of shadow
                            // ignore: prefer_const_constructors
                            BoxShadow(
                                color: Colors.black,
                                offset: const Offset(4, 4),
                                blurRadius: 15,
                                spreadRadius: 1),
                            //background shadow, top is white
                            // ignore: prefer_const_constructors
                            BoxShadow(
                                color: Colors.grey.shade700,
                                offset: const Offset(-4, -4),
                                blurRadius: 15,
                                spreadRadius: 1)
                          ]
                        : null),
              ),
            ),
          )),
    );
  }
}
