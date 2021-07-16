import 'package:flutter/material.dart';
import 'package:native_scroll/native_scroll.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _count = 100;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {
              _count += 10;
            });
          },
        ),
        appBar: AppBar(
          title: const Text('Native scroll example'),
        ),
        body: Row(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, _) {
                  return Padding(
                    padding: EdgeInsets.all(30),
                    child: Text("I'm using the Flutter default scrolling"),
                  );
                },
              ),
            ),
            Expanded(
              child: NativeScrollBuilder(
                builder: (context, controller) {
                  return ListView.builder(
                    controller: controller,
                    itemCount: _count,
                    itemBuilder: (context, _) {
                      return Padding(
                        padding: EdgeInsets.all(30),
                        child: Text(
                          "I'm using your browser's native scrolling... wheeeee!",
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
