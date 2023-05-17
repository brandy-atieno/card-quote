import 'package:flutter/material.dart';
import 'quote.dart';
import 'card_quotes.dart';

void main() => runApp(MaterialApp(
      home: const Practise(),
    ));

class Practise extends StatefulWidget {
  const Practise({super.key});

  @override
  State<Practise> createState() => _PractiseState();
}

class _PractiseState extends State<Practise> {
  List<Quotes> quotes = [
    Quotes(author: 'Brandy Atieno', text: 'Back yourself'),
    Quotes(author: 'Dani', text: 'All boys are snakes'),
    Quotes(author: 'Ben', text: 'Determination'),
    Quotes(author: 'Paul', text: 'I can do all things through Christ who strengthens me')


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text('List Practise'),
          centerTitle: true,
          backgroundColor: Colors.pink,
        ),
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: quotes
                .map((quote) => CardQouotes(
                    quote: quote,
                    delete: () {
                      setState(() {
                        quotes.remove(quote);
                      });
                    }))
                .toList()));
  }
}
