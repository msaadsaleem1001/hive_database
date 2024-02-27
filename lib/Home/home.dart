
import 'package:flutter/material.dart';

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

        ],
      )),
    );
  }
}
