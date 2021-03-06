import 'package:flutter/material.dart';
import 'quote.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {

  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  @override

  List<Quote> quotes =[

    Quote(text: 'Be yourself; Everyone else is already taken', author: 'Oscar wilde'),
    Quote(text: 'i have nothing to declare except my genius', author: 'Davio Bunner'),
    Quote(text: 'The truth is rarely pure and never simple', author: 'Tom Cruise'),

  ];

  Widget quoteTemplate(quote){
    return Card();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => Text('${quote.text} - ${quote.author}')).toList(),
      ),
    );
  }
}
