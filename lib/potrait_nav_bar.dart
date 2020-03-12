import 'package:flutter/material.dart';

class PortraitNavBar extends StatefulWidget {
  BoxConstraints size;

  PortraitNavBar(this.size);

  @override
  _PortraitNavBarState createState() => _PortraitNavBarState();
}

class _PortraitNavBarState extends State<PortraitNavBar> {
  bool isNavBarExpanded = false;
  bool isMenMenuExpanded = false;
  bool isWoMenMenuExpanded = false;
  bool isKidsMenuExpanded = false;

  @override
  Widget build(BuildContext context) {
    double navHeight = widget.size.maxHeight * 0.06;
    double fontSize = 6 + navHeight * 0.077;

    return Column(
      children: <Widget>[
        Container(
          height: navHeight,
          child: Row(
            children: <Widget>[
              SizedBox(
                width: navHeight / 2.5,
              ),
              GestureDetector(
                child: Icon(Icons.dehaze),
                onTap: () {
                  setState(() {
                    isNavBarExpanded = !isNavBarExpanded;
                  });
                },
              ),
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
        ),
        !isNavBarExpanded
            ? Container()
            : Column(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        color: Colors.black54,
                        height: 1,
                      ),
                      Container(
                        height: navHeight + 10,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isMenMenuExpanded = !isMenMenuExpanded;
                            });
                          },
                          child: Row(
                            children: <Widget>[
                              Spacer(
                                flex: 16,
                              ),
                              Text(
                                'MEN',
                                style: TextStyle(
                                  fontFamily: 'Segoe UI',
                                  fontSize: fontSize * 1.3,
                                ),
                              ),
                              Spacer(
                                flex: 1,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 3),
                                child: Icon(
                                  Icons.keyboard_arrow_down,
                                ),
                              ),
                              Spacer(
                                flex: 16,
                              ),
                            ],
                          ),
                        ),
                      ),
                      !isMenMenuExpanded
                          ? Container()
                          : Column(
                              children: <Widget>[
                                Container(
                                  color: Colors.black,
                                  height: navHeight + 10,
                                  child: Center(
                                    child: Text(
                                      'CLASSIC',
                                      style: TextStyle(
                                          fontFamily: 'Segoe UI',
                                          fontSize: fontSize * 1.3,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                                Container(
                                  color: Colors.black,
                                  height: navHeight + 10,
                                  child: Center(
                                    child: Text(
                                      'SPORTS',
                                      style: TextStyle(
                                          fontFamily: 'Segoe UI',
                                          fontSize: fontSize * 1.3,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                        color: Colors.black54,
                        height: 1,
                      ),
                      Container(
                        height: navHeight + 10,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isWoMenMenuExpanded = !isWoMenMenuExpanded;
                            });
                          },
                          child: Row(
                            children: <Widget>[
                              Spacer(
                                flex: 16,
                              ),
                              Text(
                                'WOMEN',
                                style: TextStyle(
                                  fontFamily: 'Segoe UI',
                                  fontSize: fontSize * 1.3,
                                ),
                              ),
                              Spacer(
                                flex: 1,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 3),
                                child: Icon(
                                  Icons.keyboard_arrow_down,
                                ),
                              ),
                              Spacer(
                                flex: 16,
                              ),
                            ],
                          ),
                        ),
                      ),
                      !isWoMenMenuExpanded
                          ? Container()
                          : Column(
                              children: <Widget>[
                                Container(
                                  color: Colors.black,
                                  height: navHeight + 10,
                                  child: Center(
                                    child: Text(
                                      'CLASSIC',
                                      style: TextStyle(
                                          fontFamily: 'Segoe UI',
                                          fontSize: fontSize * 1.3,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                                Container(
                                  color: Colors.black,
                                  height: navHeight + 10,
                                  child: Center(
                                    child: Text(
                                      'SPORTS',
                                      style: TextStyle(
                                          fontFamily: 'Segoe UI',
                                          fontSize: fontSize * 1.3,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                        color: Colors.black54,
                        height: 1,
                      ),
                      Container(
                        height: navHeight + 10,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isKidsMenuExpanded = !isKidsMenuExpanded;
                            });
                          },
                          child: Row(
                            children: <Widget>[
                              Spacer(
                                flex: 16,
                              ),
                              Text(
                                'KIDS',
                                style: TextStyle(
                                  fontFamily: 'Segoe UI',
                                  fontSize: fontSize * 1.3,
                                ),
                              ),
                              Spacer(
                                flex: 1,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 3),
                                child: Icon(
                                  Icons.keyboard_arrow_down,
                                ),
                              ),
                              Spacer(
                                flex: 16,
                              ),
                            ],
                          ),
                        ),
                      ),
                      !isKidsMenuExpanded
                          ? Container()
                          : Column(
                              children: <Widget>[
                                Container(
                                  color: Colors.black,
                                  height: navHeight + 10,
                                  child: Center(
                                    child: Text(
                                      'CLASSIC',
                                      style: TextStyle(
                                          fontFamily: 'Segoe UI',
                                          fontSize: fontSize * 1.3,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                                Container(
                                  color: Colors.black,
                                  height: navHeight + 10,
                                  child: Center(
                                    child: Text(
                                      'SPORTS',
                                      style: TextStyle(
                                          fontFamily: 'Segoe UI',
                                          fontSize: fontSize * 1.3,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                        color: Colors.black54,
                        height: 1,
                      ),
                      Container(
                        height: navHeight + 10,
                        child: Row(
                          children: <Widget>[
                            Spacer(
                              flex: 1,
                            ),
                            Text(
                              'CUSTOMIZE',
                              style: TextStyle(
                                fontFamily: 'Segoe UI',
                                fontSize: fontSize * 1.3,
                              ),
                            ),
                            Spacer(
                              flex: 1,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        color: Colors.black54,
                        height: 1,
                      ),
                    ],
                  ),
                ],
              ),
      ],
    );
  }
}
