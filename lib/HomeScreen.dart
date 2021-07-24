import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        body:
        SafeArea(
            child: Container(
              color: Color(0xff5b418f),
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  topRow(),
                  Column(
                    children:  <Widget>[
                      Text("Mo",
                        style: TextStyle(
                          color: Color(0xff8e7daf),
                        ),
                      ),
                      Text("10",
                        style: TextStyle(
                          color: Color(0xff8e7daf),
                        ),
                      ),
                      Container(
                        width: 4.0,
                        height: 4.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xff8e7daf),
                        ),
                      )
                    ]
                  ),
                ],
              ),
            )
        )
    );
  }
}

class topRow extends StatelessWidget {
  const topRow({
    Key? key,
}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return Row(
        children: <Widget>[
          Text("Today",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 24.0,
            ),
          ),
          // SizedBox(width: 18.0),
          // Text("Data",
          //   style: TextStyle(
          //     color: Color(0xffa79abf),
          //     fontWeight: FontWeight.bold,
          //     fontSize: 24.0,
          //   ),
          // ),
          Spacer(),
          Text("Jan",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24.0,
            ),
          ),
        ]
    );
  }
}