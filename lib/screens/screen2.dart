import 'package:flutter/material.dart';
import '../main.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column( mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("welcome to scound page",style: TextStyle(fontSize: 30),),
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
      
          ],
        ),
      ),
    );
  }
}
