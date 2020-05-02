import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  Column _simpleContainers() => Column(
    children: <Widget>[
      Container(
          width: double.infinity,
          height: 100.0,
          color: Colors.amberAccent,
          child: Text('Container 1', textDirection: TextDirection.ltr)
      ),
      Container(
          margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
          color: Colors.greenAccent,
          child: Text('Container 2', textDirection: TextDirection.ltr)
      ),
      Container(
          color: Colors.purpleAccent,
          child: Text('Container 3', textDirection: TextDirection.ltr)
      ),
    ],
  );

  Column _flexibleContainers() => Column(
    children: <Widget>[
      Flexible (
        flex: 1,
        child: Container(
          color: Colors.amberAccent,
        ),
      ),
      Flexible (
        flex: 1,
        child: Container(
          color: Colors.greenAccent,
        ),
      ),
      Flexible (
        flex: 2,
        child: Container(
          color: Colors.purpleAccent,
          child: Text('Hello World', textDirection: TextDirection.ltr),
        ),
      )
    ],
  );

  @override
  Widget build(context) {
    return Center(
      child: Container (
        padding: const EdgeInsets.only(top: 25.0),
        color: Colors.redAccent,
        child: _simpleContainers(),
      ),
    );
  }
}
