import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LightMode extends StatefulWidget {
  LightMode({Key? key}) : super(key: key);

  @override
  State<LightMode> createState() => _LightModeState();
}

class _LightModeState extends State<LightMode> {
  bool _isElevated = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.grey.shade300,
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
                        color: _isElevated ? Colors.black : Colors.pink,
                      ),
                      Text(
                        "H E L L O",
                        style: GoogleFonts.josefinSans(
                            fontSize: 20,
                            color: _isElevated
                                ? Colors.black
                                : Colors.blueGrey.shade500),
                      )
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: _isElevated
                        ? [
                            //background shadow, buttom one is grey, offset is cordinate of shadow
                            BoxShadow(
                                color: Colors.grey[500]!,
                                offset: const Offset(4, 4),
                                blurRadius: 15,
                                spreadRadius: 1),
                            //backgrounf shadow, top is white
                            // ignore: prefer_const_constructors
                            BoxShadow(
                                color: Colors.white,
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
