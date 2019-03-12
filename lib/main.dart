import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Startup Name Generator',
      home: new RandomWords(),
    );
  }
}
// MaterialApp은 title과 home 으로 이루어져 있다.

class RandomWordsState extends State<RandomWords> {

  final List<WordPair> _suggestions = <WordPair>[];
  final TextStyle _biggerFont = const TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Startup Name Generator')
      ),
      body: _buildSuggestions()
    );
  }

  //Scaffold는 Material Design의 기본 골격을 쉽게 추가 할 수 있게함.
  //AppBar와 Body를 추가하는 방식
  //body는 하나의 위젯만을 가진다. 여러가지 위젯을 포함시키기위해 위젯을 body의 child로 설정하는것이 필요

  Widget _buildSuggestions() {
    return new ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (BuildContext _context, int i) {
          if (i.isOdd) {
            return new Divider();
          }
          final int index = i ~/ 2;

          if (index >= _suggestions.length) {
            _suggestions.addAll(generateWordPairs().take(10));
          }
          return _buildRow(_suggestions[index]);
        });
  }

  Widget _buildRow(WordPair pair) {
    return new ListTile(
        title: new Text(
      pair.asPascalCase,
      style: _biggerFont,
    ));
  }
}

class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => new RandomWordsState();
}
