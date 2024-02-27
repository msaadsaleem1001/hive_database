
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class HiveHome extends StatefulWidget {
  const HiveHome({super.key});

  @override
  State<HiveHome> createState() => _HiveHomeState();
}

class _HiveHomeState extends State<HiveHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade300,
        centerTitle: true,
        title: const Text('Hive Database'),
      ),
      body: SafeArea(
          child: Column(
        children: [
          FutureBuilder(
              future: Hive.openBox('Info'),
              builder: (context, snapshot){
                return Column(
                  children: [
                    Text(snapshot.data!.get('name').toString()),
                    Text(snapshot.data!.get('prof').toString()),

                    IconButton(onPressed: (){
                      snapshot.data!.put('name', 'Saad Saleem');
                      snapshot.data!.put('prof', 'Flutter Developer');
                      setState(() {

                      });
                    }, icon: const Icon(Icons.add))
                  ],
                );
              }
          )
        ],
      )),
    );
  }
}
