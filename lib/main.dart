import 'package:changescreens/screens/screen2.dart';
import 'package:flutter/material.dart';
import './screens/screen1.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "go to first page",
            style: TextStyle(fontSize: 30),
          ),
          ElevatedButton.icon(
              onPressed: () {
                setState(() {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Page1();
                    },
                  ));
                });
              },
              icon: Icon(Icons.pages),
              label: Text("go to page")),
              Text("go to the secound page",style: TextStyle(fontSize: 30),),
          ElevatedButton.icon(
              onPressed: () {
                setState(() {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Page2();
                    },
                  ));
                });
              },
              icon: Icon(Icons.pages),
              label: Text("go to page"))
        ],
      ),
    );
  }
}
