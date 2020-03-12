import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nike_web/nav_bar.dart';
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
          desktop: buildForDesktop(context),
          tablet: OrientationLayoutBuilder(
            portrait: (context) => LayoutBuilder(
              builder: (context, size) {
                return Container(
                  height: size.maxHeight,
                  width: size.maxWidth,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      () {
                        double navHeight = size.maxHeight * 0.06;
                        return Container(
                          height: navHeight,
                          child: Row(
                            children: <Widget>[
                              SizedBox(
                                width: navHeight / 2.5,
                              ),
                              Icon(Icons.dehaze),
                              Spacer(),
                              Icon(Icons.search),
                              SizedBox(
                                width: navHeight / 2.5,
                              ),
                              Icon(Icons.shopping_cart),
                              SizedBox(
                                width: navHeight / 2.5,
                              ),
                            ],
                          ),
                        );
                      }(),
                      () {
                        var headerHeight = size.maxHeight * 0.6;
                        return Container(
                          height: headerHeight,
                          child: Row(
                            children: <Widget>[
                              Flexible(
                                flex: 1,
                                child: Container(
                                  color: Colors.black.withOpacity(0.9),
                                  child: Align(
                                    child: Image.network(
                                      'https://www.jing.fm/clipimg/full/24-243223_nike-clipart-check-mark-white-nike-logo-transparent.png',
                                      height: headerHeight * 0.1,
                                    ),
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 2,
                                child: Container(),
                              ),
                            ],
                          ),
                        );
                      }()
                    ],
                  ),
                );
              },
            ),
            landscape: (context) => buildForTabletLandScape(context),
          )),
    );
  }

  Widget buildForTabletLandScape(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
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
                      color: Colors.black.withOpacity(0.9),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Spacer(
                            flex: 1,
                          ),
                          Row(
                            children: <Widget>[
                              Spacer(
                                flex: 1,
                              ),
                              Flexible(
                                flex: 3,
                                child: Image.network(
                                  'https://www.jing.fm/clipimg/full/24-243223_nike-clipart-check-mark-white-nike-logo-transparent.png',
                                ),
                              ),
                              Spacer(
                                flex: 7,
                              )
                            ],
                          ),
                          Spacer(
                            flex: 18,
                          ),
                          Row(
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
                          Spacer(
                            flex: 1,
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
                                NavBar(size),
                                Expanded(
                                  child: LayoutBuilder(
                                    builder: (context, size) {
                                      double navHeight =
                                          (size.maxHeight * 0.1 * 0.2 +
                                                  size.maxWidth * 0.1 * 0.8) *
                                              0.8;
                                      double fontSize = 6 + navHeight * 0.1;
                                      return Container(
                                        height: size.maxHeight,
                                        width: size.maxWidth,
                                        child: Row(
                                          children: <Widget>[
                                            Spacer(
                                              flex: 10,
                                            ),
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              textDirection: TextDirection.ltr,
                                              children: <Widget>[
                                                Spacer(
                                                  flex: 14,
                                                ),
                                                Text(
                                                  'BASKETBALL SHOE',
                                                  style: TextStyle(
                                                      letterSpacing: 3,
                                                      fontFamily: 'Dubai',
                                                      fontWeight:
                                                          FontWeight.w800,
                                                      fontSize: fontSize * 1.2,
                                                      color: Colors.black87
                                                          .withOpacity(0.7)),
                                                ),
                                                Text(
                                                  'LeBron 16',
                                                  style: TextStyle(
                                                      fontSize: fontSize * 5,
                                                      fontFamily: 'Bahnschrift',
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Text(
                                                  "Engineered for the strongest",
                                                  style: TextStyle(
                                                    fontSize: fontSize * 1.5,
                                                    fontFamily: 'Dubai',
                                                  ),
                                                ),
                                                Text(
                                                  "player on the planet, the LeBron",
                                                  style: TextStyle(
                                                    fontSize: fontSize * 1.5,
                                                    fontFamily: 'Dubai',
                                                  ),
                                                ),
                                                Text(
                                                  "16 gives a powerful vibe",
                                                  style: TextStyle(
                                                    fontSize: fontSize * 1.5,
                                                    fontFamily: 'Dubai',
                                                  ),
                                                ),
                                                Spacer(
                                                  flex: 2,
                                                ),
                                                Container(
                                                  height: navHeight * 0.6 + 20,
                                                  width: navHeight * 2.2 + 15,
                                                  decoration: BoxDecoration(
                                                      borderRadius: BorderRadius
                                                          .horizontal(
                                                        left:
                                                            Radius.circular(50),
                                                        right:
                                                            Radius.circular(50),
                                                      ),
                                                      color: Colors.black),
                                                  child: Center(
                                                    child: Text(
                                                      'SHOP NOW',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          fontFamily: 'Dubai',
                                                          color: Colors.white,
                                                          fontSize:
                                                              navHeight * 0.17 +
                                                                  3.5,
                                                          letterSpacing: 0.7),
                                                    ),
                                                  ),
                                                ),
                                                Spacer(
                                                  flex: 17,
                                                ),
                                              ],
                                            ),
                                            Spacer(
                                              flex: 2,
                                            ),
                                          ],
                                        ),
                                      );
                                    },
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
                          blurRadius: 30.0, // soften the shadow
                          spreadRadius: 3.0, //extend the shadow
                          offset: Offset(
                            10.0, // Move to right 10  horizontally
                            0.0, // Move to bottom 5 Vertically
                          ),
                        ),
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 10.0,
                          spreadRadius: 0.2,
                          offset:
                              Offset(0.4, 1), // shadow direction: bottom right
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
    });
  }

  Widget buildForDesktop(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
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
                      color: Colors.black.withOpacity(0.9),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Spacer(
                            flex: 1,
                          ),
                          Row(
                            children: <Widget>[
                              Spacer(
                                flex: 1,
                              ),
                              Flexible(
                                flex: 3,
                                child: Image.network(
                                  'https://www.jing.fm/clipimg/full/24-243223_nike-clipart-check-mark-white-nike-logo-transparent.png',
                                ),
                              ),
                              Spacer(
                                flex: 7,
                              )
                            ],
                          ),
                          Spacer(
                            flex: 18,
                          ),
                          Row(
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
                          Spacer(
                            flex: 1,
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
                                NavBar(size),
                                Expanded(
                                  child: LayoutBuilder(
                                    builder: (context, size) {
                                      double navHeight =
                                          (size.maxHeight * 0.1 * 0.2 +
                                                  size.maxWidth * 0.1 * 0.8) *
                                              0.8;
                                      double fontSize = 4 + navHeight * 0.13;
                                      return Container(
                                        height: size.maxHeight,
                                        width: size.maxWidth,
                                        child: Row(
                                          children: <Widget>[
                                            Spacer(
                                              flex: 5,
                                            ),
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              textDirection: TextDirection.ltr,
                                              children: <Widget>[
                                                Spacer(
                                                  flex: 14,
                                                ),
                                                Text(
                                                  'BASKETBALL SHOE',
                                                  style: TextStyle(
                                                      letterSpacing: 3,
                                                      fontFamily: 'Dubai',
                                                      fontWeight:
                                                          FontWeight.w800,
                                                      fontSize: fontSize * 1.2,
                                                      color: Colors.black87
                                                          .withOpacity(0.7)),
                                                ),
                                                Text(
                                                  'LeBron 16',
                                                  style: TextStyle(
                                                      fontSize: fontSize * 5,
                                                      fontFamily: 'Bahnschrift',
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Text(
                                                  "Engineered for the strongest",
                                                  style: TextStyle(
                                                    fontSize: fontSize * 1.5,
                                                    fontFamily: 'Dubai',
                                                  ),
                                                ),
                                                Text(
                                                  "player on the planet, the LeBron",
                                                  style: TextStyle(
                                                    fontSize: fontSize * 1.5,
                                                    fontFamily: 'Dubai',
                                                  ),
                                                ),
                                                Text(
                                                  "16 gives a powerful vibe",
                                                  style: TextStyle(
                                                    fontSize: fontSize * 1.5,
                                                    fontFamily: 'Dubai',
                                                  ),
                                                ),
                                                Spacer(
                                                  flex: 2,
                                                ),
                                                Container(
                                                  height: navHeight * 0.6 + 20,
                                                  width: navHeight * 2.2 + 15,
                                                  decoration: BoxDecoration(
                                                      borderRadius: BorderRadius
                                                          .horizontal(
                                                        left:
                                                            Radius.circular(50),
                                                        right:
                                                            Radius.circular(50),
                                                      ),
                                                      color: Colors.black),
                                                  child: Center(
                                                    child: Text(
                                                      'SHOP NOW',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          fontFamily: 'Dubai',
                                                          color: Colors.white,
                                                          fontSize:
                                                              navHeight * 0.17 +
                                                                  3.5,
                                                          letterSpacing: 0.7),
                                                    ),
                                                  ),
                                                ),
                                                Spacer(
                                                  flex: 17,
                                                ),
                                              ],
                                            ),
                                            Spacer(
                                              flex: 2,
                                            ),
                                          ],
                                        ),
                                      );
                                    },
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
                          blurRadius: 30.0, // soften the shadow
                          spreadRadius: 3.0, //extend the shadow
                          offset: Offset(
                            10.0, // Move to right 10  horizontally
                            0.0, // Move to bottom 5 Vertically
                          ),
                        ),
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 10.0,
                          spreadRadius: 0.2,
                          offset:
                              Offset(0.4, 1), // shadow direction: bottom right
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
    });
  }
}
