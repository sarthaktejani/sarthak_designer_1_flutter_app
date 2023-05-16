import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Indexed"),
      ),
      floatingActionButton: Row(
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                selectedIndex = 0;
              });
            },
            child: Text("Add"),
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                selectedIndex = 1;
              });
            },
            child: Text("Add"),
          ),
        ],
      ),
      body: IndexedStack(
        index: selectedIndex,
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.all(20),
              height: 500,
              width: 500,
              color: Colors.red,
            ),
          ),
          Container(
            height: 200,
            width: 200,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
