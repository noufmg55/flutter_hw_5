import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var count = 0;
  var color = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Column(
        children: [
          const SizedBox(height: 100),
          Center(
            child: Text(
              '$count',
              style: const TextStyle(color: Colors.white, fontSize: 50),
            ),
          ),
          const SizedBox(height: 50),
          ElevatedButton(
            onPressed: () {
              count++;
              setState(() {});
            },
            child: const Text('سبح '),
          ),
          const SizedBox(height: 50),
          InkWell(
            child: Icon(Icons.favorite, color: color, size: 50),
            onTap: () {
              if (color == Colors.red) {
                color = Colors.black;
              } else {
                color = Colors.red;
              }
              setState(() {});
            },
          )
        ],
      ),
    );
  }
}



////
/// 
///  


         
 