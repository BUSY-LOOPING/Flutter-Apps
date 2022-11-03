// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(50),
          child: const Icon(
            Icons.settings,
          size: 120,
          ),
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            // shape: BoxShape.circle,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              //bottom right darker shadow
              BoxShadow(
                color: Colors.grey.shade600,
                offset: const Offset(5.0, 5.0),
                blurRadius: 15,
                spreadRadius: 1,
              ),

              //bottom right lighter shadow
              BoxShadow(
                color: Colors.white,
                offset: const Offset(-5.0, -5.0),
                blurRadius: 15,
                spreadRadius: 1,
              ),
            ]
          ),
        ),
      ),
    );
  }
}