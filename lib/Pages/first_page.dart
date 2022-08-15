import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../main.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.yellow,
        body: Center(
          child: Column(
            children: [
              Center(
                child: Text(
                  'First Page',
                  style: TextStyle(fontSize: 50),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: ListTile(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyApp()));
                  },
                  leading: Container(
                    alignment: Alignment.center,
                    child: Text(
                      'Click Me',
                      style: TextStyle(fontSize: 20),
                    ),
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.greenAccent),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
