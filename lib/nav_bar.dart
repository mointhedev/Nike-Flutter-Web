import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  final BoxConstraints size;

  NavBar(this.size);

  @override
  Widget build(BuildContext context) {
    double navHeight =
        (size.maxHeight * 0.1 * 0.2 + size.maxWidth * 0.1 * 0.8) * 0.8;

    double fontSize = 9 + navHeight * 0.065;

    return Container(
      padding: EdgeInsets.only(left: 50),
      height: navHeight,
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
                    fontWeight: FontWeight.w600,
                    fontSize: fontSize),
              ),
              PopupMenuButton(
                itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                  PopupMenuItem<String>(
                    value: 'Value1',
                    child: Center(
                      child: Text(
                        'CLASSIC',
                        style: TextStyle(
                            fontFamily: 'Segoe UI',
                            color: Colors.white,
                            fontSize: fontSize),
                      ),
                    ),
                  ),
                  PopupMenuItem<String>(
                    value: 'Value2',
                    child: Center(
                      child: Text(
                        'SPORTS',
                        style: TextStyle(
                            fontFamily: 'Segoe UI',
                            color: Colors.white,
                            fontSize: fontSize),
                      ),
                    ),
                    enabled: true,
                  ),
                ],
                elevation: 0.0,
                child: Icon(Icons.keyboard_arrow_down),
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
                    fontWeight: FontWeight.w600,
                    fontSize: fontSize),
              ),
              PopupMenuButton(
                itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                  PopupMenuItem<String>(
                    value: 'Value1',
                    child: Center(
                      child: Text(
                        'CLASSIC',
                        style: TextStyle(
                            fontFamily: 'Segoe UI',
                            color: Colors.white,
                            fontSize: fontSize),
                      ),
                    ),
                  ),
                  PopupMenuItem<String>(
                    value: 'Value2',
                    child: Center(
                      child: Text(
                        'SPORTS',
                        style: TextStyle(
                            fontFamily: 'Segoe UI',
                            color: Colors.white,
                            fontSize: fontSize),
                      ),
                    ),
                    enabled: true,
                  ),
                ],
                elevation: 0.0,
                child: Icon(Icons.keyboard_arrow_down),
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
                    fontWeight: FontWeight.w600,
                    fontSize: fontSize),
              ),
              PopupMenuButton(
                itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                  PopupMenuItem<String>(
                    value: 'Value1',
                    child: Center(
                      child: Text(
                        'CLASSIC',
                        style: TextStyle(
                            fontFamily: 'Segoe UI',
                            color: Colors.white,
                            fontSize: fontSize),
                      ),
                    ),
                  ),
                  PopupMenuItem<String>(
                    value: 'Value2',
                    child: Center(
                      child: Text(
                        'SPORTS',
                        style: TextStyle(
                            fontFamily: 'Segoe UI',
                            color: Colors.white,
                            fontSize: fontSize),
                      ),
                    ),
                    enabled: true,
                  ),
                ],
                elevation: 0.0,
                child: Icon(Icons.keyboard_arrow_down),
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
                fontWeight: FontWeight.w600,
                fontSize: fontSize),
          ),
          Spacer(
            flex: 5,
          ),
          Icon(
            Icons.search,
            size: fontSize * 1.75,
          ),
          Spacer(),
          Icon(
            Icons.shopping_cart,
            size: fontSize * 1.75,
          ),
          Spacer(),
          Container(
            color: Colors.black,
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: navHeight,
                minHeight: navHeight * 0.6,
                maxWidth: navHeight,
                minWidth: navHeight * 0.6,
              ),
              child: Center(
                child: Padding(
                  padding: EdgeInsets.all(navHeight * 0.2),
                  child: Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTmIqX6p9xyGWcZ2rqEjQjYmsnlxy-XrhGtSD6xk4fksXcSOBcV'),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
