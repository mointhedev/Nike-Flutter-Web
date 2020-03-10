import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'shoe_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nike Web',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String _select = null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenTypeLayout(
          desktop: LayoutBuilder(builder: (context, constraints) {
        return Container(
          height: constraints.maxHeight,
          width: constraints.maxWidth,
          child: Stack(
            children: <Widget>[
              Container(
                height: constraints.maxHeight,
                width: constraints.maxWidth,
                child: Row(
                  children: <Widget>[
                    Flexible(
                      flex: 1,
                      child: Container(
                        height: constraints.maxHeight,
                        color: Colors.black,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 0),
                              child: Row(
                                children: <Widget>[
                                  Flexible(
                                    flex: 2,
                                    child: Image.network(
                                      'https://i.ya-webdesign.com/images/white-nike-logo-png-8.png',
                                      height: 120,
                                      width: 220,
                                    ),
                                  ),
                                  Flexible(
                                    flex: 3,
                                    child: Container(),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 40),
                              child: Row(
                                children: <Widget>[
                                  Spacer(),
                                  Text(
                                    'EN',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Dubai',
                                        fontWeight: FontWeight.w200),
                                  ),
                                  Spacer(),
                                  Text(
                                    'RU',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Dubai',
                                        fontWeight: FontWeight.w200),
                                  ),
                                  Spacer(
                                    flex: 8,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Flexible(
                        flex: 2,
                        child: LayoutBuilder(
                          builder: (context, size) {
                            return Container(
                              height: size.maxHeight,
                              width: size.maxWidth,
                              color: Colors.white,
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.only(left: 50),
                                    height: size.maxHeight * 0.1,
                                    width: size.maxWidth,
                                    child: Row(
                                      children: <Widget>[
                                        Spacer(),
                                        Row(
                                          children: <Widget>[
                                            Text(
                                              'MEN',
                                              style: TextStyle(
                                                  fontFamily: 'Segoe UI',
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            PopupMenuButton(
                                              itemBuilder:
                                                  (BuildContext context) =>
                                                      <PopupMenuEntry<String>>[
                                                PopupMenuItem<String>(
                                                  value: 'Value1',
                                                  child: Center(
                                                    child: Text(
                                                      'CLASSIC',
                                                      style: TextStyle(
                                                          fontFamily:
                                                              'Segoe UI',
                                                          color: Colors.white),
                                                    ),
                                                  ),
                                                ),
                                                const PopupMenuItem<String>(
                                                  value: 'Value2',
                                                  child: Center(
                                                    child: Text(
                                                      'SPORTS',
                                                      style: TextStyle(
                                                          fontFamily:
                                                              'Segoe UI',
                                                          color: Colors.white),
                                                    ),
                                                  ),
                                                  enabled: true,
                                                ),
                                              ],
                                              elevation: 0.0,
                                              child: Icon(
                                                  Icons.keyboard_arrow_down),
                                              color: Colors.black,
                                              offset: Offset(0, 25),
                                            ),
                                          ],
                                        ),
                                        Spacer(),
                                        Row(
                                          children: <Widget>[
                                            Text(
                                              'WOMEN',
                                              style: TextStyle(
                                                  fontFamily: 'Segoe UI',
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            PopupMenuButton(
                                              itemBuilder:
                                                  (BuildContext context) =>
                                                      <PopupMenuEntry<String>>[
                                                PopupMenuItem<String>(
                                                  value: 'Value1',
                                                  child: Center(
                                                    child: Text(
                                                      'CLASSIC',
                                                      style: TextStyle(
                                                          fontFamily:
                                                              'Segoe UI',
                                                          color: Colors.white),
                                                    ),
                                                  ),
                                                ),
                                                const PopupMenuItem<String>(
                                                  value: 'Value2',
                                                  child: Center(
                                                    child: Text(
                                                      'SPORTS',
                                                      style: TextStyle(
                                                          fontFamily:
                                                              'Segoe UI',
                                                          color: Colors.white),
                                                    ),
                                                  ),
                                                  enabled: true,
                                                ),
                                              ],
                                              elevation: 0.0,
                                              child: Icon(
                                                  Icons.keyboard_arrow_down),
                                              color: Colors.black,
                                              offset: Offset(0, 25),
                                            ),
                                          ],
                                        ),
                                        Spacer(),
                                        Row(
                                          children: <Widget>[
                                            Text(
                                              'KIDS',
                                              style: TextStyle(
                                                  fontFamily: 'Segoe UI',
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            PopupMenuButton(
                                              itemBuilder:
                                                  (BuildContext context) =>
                                                      <PopupMenuEntry<String>>[
                                                PopupMenuItem<String>(
                                                  value: 'Value1',
                                                  child: Center(
                                                    child: Text(
                                                      'CLASSIC',
                                                      style: TextStyle(
                                                          fontFamily:
                                                              'Segoe UI',
                                                          color: Colors.white),
                                                    ),
                                                  ),
                                                ),
                                                const PopupMenuItem<String>(
                                                  value: 'Value2',
                                                  child: Center(
                                                    child: Text(
                                                      'SPORTS',
                                                      style: TextStyle(
                                                          fontFamily:
                                                              'Segoe UI',
                                                          color: Colors.white),
                                                    ),
                                                  ),
                                                  enabled: true,
                                                ),
                                              ],
                                              elevation: 0.0,
                                              child: Icon(
                                                  Icons.keyboard_arrow_down),
                                              color: Colors.black,
                                              offset: Offset(0, 25),
                                            ),
                                          ],
                                        ),
                                        Spacer(),
                                        Text(
                                          'CUSTOMIZE',
                                          style: TextStyle(
                                              fontFamily: 'Segoe UI',
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Spacer(),
                                        Spacer(),
                                        Spacer(),
                                        Spacer(),
                                        Spacer(),
                                        Icon(Icons.search),
                                        Spacer(),
                                        Icon(Icons.shopping_cart),
                                        Spacer(),
                                        Expanded(
                                          flex: 2,
                                          child: Container(color: Colors.black),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            );
                          },
                        )),
                  ],
                ),
              ),
              Center(
                child: Row(
                  children: <Widget>[
                    Spacer(
                      flex: 3,
                    ),
                    Container(
                      height: ((constraints.maxWidth * 0.4 +
                                  constraints.maxHeight * 0.6) *
                              0.2) *
                          2,
                      width: ((constraints.maxWidth * 0.4 +
                                  constraints.maxHeight * 0.6) *
                              0.2) *
                          2,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment(0.8,
                              0.0), // 10% of the width, so there are ten blinds.
                          colors: [
                            const Color.fromRGBO(251, 217, 117, 1),
                            const Color.fromRGBO(244, 176, 47, 1),
                          ], // whitish to gray
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.redAccent.withOpacity(0.4),
                            blurRadius: 55.0, // soften the shadow
                            spreadRadius: 5.0, //extend the shadow
                            offset: Offset(
                              10.0, // Move to right 10  horizontally
                              10.0, // Move to bottom 5 Vertically
                            ),
                          )
                        ],
                        shape: BoxShape.circle,
                      ),
                    ),
                    Spacer(
                      flex: 8,
                    ),
                  ],
                ),
              ),
              Center(
                child: Row(
                  children: <Widget>[
                    Spacer(
                      flex: 3,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 100),
                      child: Shoe((constraints.maxWidth * 0.4 +
                              constraints.maxHeight * 0.6) *
                          0.2),
                    ),
                    Spacer(
                      flex: 8,
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      })),
    );
  }
}
