import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPair = new WordPair.random(); // Add this line.
    return new MaterialApp(
      title: 'Welcome to Flutter',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Welcome to Flutter'),
        ),
        body: new Center(    // Change "const" to "new".
          //child: const Text('Hello World'),   // Replace this text...
          child: new Text(wordPair.asPascalCase),  // With this text.
        ),
      ),
    );
  }
}