import 'package:flutter/material.dart';
import 'dart:math';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final Random _random = Random();
  Color _color = Color(0xFFFFFFFF);

  void _changeColor() {
    setState(() {
      _color = Color((_random.nextInt(0xFFFFFFFF))).withOpacity(0.6);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: GestureDetector(
        onTap: _changeColor,
        child: _MainContainer(color: _color),
      ),
    ));
  }
}

class _MainContainer extends StatelessWidget {
  const _MainContainer({
    Key key,
    @required Color color,
  }) : _color = color, super(key: key);

  final Color _color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: _color,
      child: Center(
        child: Text(
          'Hey there',
          style: TextStyle(
              color: Colors.deepPurple,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              fontSize: 40),
        ),
      ),
    );
  }
}
