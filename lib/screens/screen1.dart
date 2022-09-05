import 'package:flutter/material.dart';
import '../main.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  List mobiles = [
    "iphoneX",
    "iphone xs max",
    "iphone 11 ",
    "iphone 11 pro max"
  ];
  String defultvalue = "iphoneX";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column( mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("welcome to first page",style: TextStyle(fontSize: 30),),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    Navigator.pop(context,
                        MaterialPageRoute(builder: ((context) {
                      return MyApp();
                    })));
                  });
                },
                child: Text("go to main page")),
            DropdownButton(
              value: defultvalue,
              items: mobiles
                  .map((e) => DropdownMenuItem(value: e, child: Text("$e")))
                  .toList(),
              onChanged: (val) {
                setState(() {
                  defultvalue = val.toString();
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
