import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scaffold Example',
      theme: ThemeData(primarySwatch: Colors.yellow),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sushi Restaurant Menu',
          style: TextStyle(
            color: Colors.yellowAccent,
            fontSize: 24.0,
            fontFamily: 'Syne',
          ),),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Column(
        children: [
          Card(
            elevation: 5, // Shadow depth
            color: Colors.pinkAccent[100],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding( // Add padding inside the card
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20.0), // Half of width/height (100 / 2 = 50)
                    child: Image.asset(
                      'images/nigiri.jpg',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 20),
                  Text(
                    'Nigiri',
                    style: TextStyle(fontSize: 30.0, color: Colors.yellow[600], fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Card(
            elevation: 5, // Shadow depth
            color: Colors.pinkAccent[100],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding( // Add padding inside the card
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20.0), // Half of width/height (100 / 2 = 50)
                    child: Image.asset(
                      'images/temaki.jpg',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 20),
                  Text(
                    'Temaki',
                    style: TextStyle(fontSize: 30.0, color: Colors.yellow[600], fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Card(
            elevation: 5, // Shadow depth
            color: Colors.pinkAccent[100],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding( // Add padding inside the card
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20.0), // Half of width/height (100 / 2 = 50)
                    child: Image.asset(
                      'images/temari.jpg',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 20),
                  Text(
                    'Temari',
                    style: TextStyle(fontSize: 30.0, color: Colors.yellow[600], fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}