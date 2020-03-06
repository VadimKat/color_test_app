import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() => runApp(ColorApp());

class ColorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Color randomizer',
            style: TextStyle(
                fontSize: 30, color: Colors.white, fontFamily: 'Pacifico'),
          ),
          backgroundColor: Colors.blueGrey,
        ),
        body: Center(
          child: ColorChanger(),
        ),
      ),
    );
  }
}

class ColorChanger extends StatefulWidget {
  @override
  _ColorChangerState createState() => _ColorChangerState();
}

class _ColorChangerState extends State<ColorChanger> {
  var colorToSet = Colors.white;
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.all(0),
      onPressed: () {
        setState(() {
          colorToSet =
              Colors.primaries[math.Random().nextInt(Colors.primaries.length)];
        });
      },
      child: Container(
        alignment: Alignment(0.0, 0.0),
        color: colorToSet,
        child: Text(
          'Hey there',
          style: TextStyle(
              fontSize: 40, color: Colors.black, fontFamily: 'Pacifico'),
        ),
      ),
    );
  }
}
