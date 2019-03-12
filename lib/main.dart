import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(new MyApp());

//stateless는 한번 만들어지고 불변이므로 hot reload 하더라도 text값이 변경되지 않는다.
//stateful 로 작성하면 hot reload하면 text 값이 변경 된다.
//stateful은 statefulWidget클래스와 state 클래스가 필요하다.


class MyApp extends StatelessWidget {
//  final wordPair = new WordPair.random();                       stateless
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Welcome to Flutter',
      home: new Scaffold(
        appBar: new AppBar(
          title: const Text('Welcome to Flutter'),
        ),
        body: new Center(
//          child: const Text('Hello World'),                     stateless
        child: new RandomWords(),
        ),
      ),
    );
  }
}

class RandomWordsState extends State<RandomWords>{
  @override
  Widget build(BuildContext context) {
    final WordPair wordPair = new WordPair.random();
    return new Text(wordPair.asPascalCase);
  }

}

class RandomWords extends StatefulWidget{
  @override
  RandomWordsState createState() => new RandomWordsState();

}