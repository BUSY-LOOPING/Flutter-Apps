import 'dart:convert';

import 'package:flask1/function.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String url = '';
  dynamic data = '';
  String output = 'Initial Output';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset:false,
      appBar: AppBar(
        title: const Text('Simple Flask App'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                onChanged: (value) {
                  url = 'https://ascii-prac.herokuapp.com/api?query=$value';
                },
              ),
              TextButton(
                  onPressed: () async {
                    data = await fetchData(url);
                    var decoded = jsonDecode(data);
                    setState(() {
                      output = decoded['output'];
                    });
                  },
                  child: const Text('Fetch ASCII Value')),
              Text(output),
            ],
          ),
        ),
      ),
    );
  }
}
