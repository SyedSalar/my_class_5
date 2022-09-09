import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int a = 0, b = 0;
  int c = 0;
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Material(
          color: Colors.white,
          child: Column(
            children: [
              Text("Calculator",
                  style: GoogleFonts.aBeeZee(
                      fontSize: 30, fontWeight: FontWeight.bold)),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          hintText: 'Enter 1st Number',
                          labelText: '1st Number',
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4),
                              borderSide: BorderSide(
                                width: 20,
                                color: Colors.white,
                              ))),
                      onChanged: (value) {
                        setState(() {
                          a = int.parse(value);
                        });
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          hintText: 'Enter 2nd Number',
                          labelText: '2nd Number',
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4),
                              borderSide: BorderSide(
                                width: 20,
                                color: Colors.white,
                              ))),
                      onChanged: (value) {
                        setState(() {
                          b = int.parse(value);
                        });
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Text('Answer: $c',
                  style: GoogleFonts.aBeeZee(
                      fontSize: 20, fontWeight: FontWeight.w600)),
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Spacer(),
                  SizedBox(
                      width: 100,
                      height: 50,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black,
                          ),
                          onPressed: (() {
                            setState(() {
                              c = a + b;
                            });
                          }),
                          child: Text('Add'))),
                  Spacer(),
                  SizedBox(
                      width: 100,
                      height: 50,
                      child: ElevatedButton(
                          style:
                              ElevatedButton.styleFrom(primary: Colors.black),
                          onPressed: (() {
                            setState(() {
                              c = a - b;
                            });
                          }),
                          child: Text('Subtract'))),
                  Spacer(),
                  SizedBox(
                      width: 100,
                      height: 50,
                      child: ElevatedButton(
                          style:
                              ElevatedButton.styleFrom(primary: Colors.black),
                          onPressed: (() {
                            setState(() {
                              c = a * b;
                            });
                          }),
                          child: Text('Multiply'))),
                  Spacer(),
                  SizedBox(
                      width: 100,
                      height: 50,
                      child: ElevatedButton(
                          style:
                              ElevatedButton.styleFrom(primary: Colors.black),
                          onPressed: (() {
                            setState(() {
                              c = a ~/ b;
                            });
                          }),
                          child: Text('Divide'))),
                  Spacer()
                ],
              ),
              // SizedBox(
              //   height: 300,
              // ),
              Image.asset(
                'myimages/a.jpg',
                scale: 1.5,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  color: Colors.black,
                  child: Row(
                    children: [
                      Spacer(),
                      Icon(
                        Icons.whatsapp_rounded,
                        size: 15,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.facebook_rounded,
                        size: 25,
                        color: Colors.white,
                      ),
                      Spacer()
                    ],
                  )),
              Container(
                color: Colors.black,
                child: Row(
                  children: [
                    Spacer(),
                    Text(
                      'All rights reserved Salar Jafri Pvt Ltd.2022',
                      style: TextStyle(
                          color: Colors.white,
                          backgroundColor: Colors.black,
                          fontStyle: FontStyle.italic),
                    ),
                    Spacer()
                  ],
                ),
              )
            ],
          )),
    ));
  }
}
