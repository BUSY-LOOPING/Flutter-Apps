import 'package:data_passing/details.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _Item {
  final Icon icon;
  const _Item({
    required this.icon,
  });
}

const List<_Item> list = [
  _Item(icon: Icon(Icons.ramen_dining)),
  _Item(icon: Icon(Icons.camera)),
  _Item(icon: Icon(Icons.square_outlined)),
  _Item(icon: Icon(Icons.camera_alt)),
  _Item(icon: Icon(Icons.baby_changing_station)),
  _Item(icon: Icon(Icons.bike_scooter)),
  _Item(icon: Icon(Icons.movie)),
  _Item(icon: Icon(Icons.audio_file)),
  _Item(icon: Icon(Icons.audio_file_outlined)),
  _Item(icon: Icon(Icons.audio_file_rounded)),
];

class _HomeState extends State<Home> {
  // List<_Item> _list = List<_Item>.empty(growable: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview'),
      ),
      body: _buildListView(context),
    );
  }

  ListView _buildListView(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (_, index) {
        
        return ListTile(
          title: Text('List item number $index'),
          subtitle: Text('Subtitle'),
          leading: Hero(tag: index, child: list[index].icon, transitionOnUserGestures: true,),
          trailing: Icon(Icons.arrow_forward),
          onTap: (() {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Details(index: index)));
          }),
        );
      },
    );
  }
}
