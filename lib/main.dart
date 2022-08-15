import 'package:flutter/material.dart';

import 'Pages/first_page.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[300],
        title: Text('App Bar'),
      ),
      drawer: Drawer(
        child: Container(
            color: Colors.pink[300],
            child: ListView(
              children: [
                DrawerHeader(
                  child: Center(
                    child: Text(
                      'Home',
                      style: TextStyle(color: Colors.white, fontSize: 35),
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Persons Data'),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FirstPage()));
                  },
                )
              ],
            )),
      ),
    );
  }
}
