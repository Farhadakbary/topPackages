import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class EnglishWords extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RandomWords(),
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  _RandomWordsState createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  final _suggestions = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 18.0);

  @override
  void initState() {
    super.initState();
    _suggestions.addAll(generateWordPairs().take(100));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Random Words',style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.yellow[300],
      ),
      body: _buildSuggestions(),
    );
  }

  Widget _buildSuggestions() {
    return ListView.builder(

        padding: const EdgeInsets.all(16.0),
        itemCount: _suggestions.length * 2 - 1,
        itemBuilder: (context, i) {
          if (i.isOdd) return Divider();

          final index = i ~/ 2;
          return _buildRow(_suggestions[index]);
        });
  }

  Widget _buildRow(WordPair pair) {
    return ListTile(focusColor: Colors.teal,
      tileColor:Colors.yellow[300],
      title: Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
    );
  }
}