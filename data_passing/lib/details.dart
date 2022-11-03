import 'package:data_passing/home.dart';
import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  final int index;

  const Details({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(tag: index, 
            child: Icon(list[index].icon.icon, 
            size: 200,),
            transitionOnUserGestures: true,
            ),
            SizedBox(
              height: 50,
            ),
            Text('The details page number $index'),
          ],
        ),
      ),
    );
  }
}
