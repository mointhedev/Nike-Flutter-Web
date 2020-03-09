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
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Spacer(),
                                  Text(
                                    'RU',
                                    style: TextStyle(color: Colors.white),
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
                      child: Container(
                        color: Colors.white,
                      ),
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
                    Shoe((constraints.maxWidth * 0.4 +
                            constraints.maxHeight * 0.6) *
                        0.2),
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
