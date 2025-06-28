import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final String page;
  const HomePage({super.key, required this.page});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(widget.page, style: TextStyle(color: Colors.white)),
    );
  }
}
