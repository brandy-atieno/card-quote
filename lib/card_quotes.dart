import 'package:flutter/material.dart';
import 'quote.dart';
class CardQouotes extends StatelessWidget {
  late final Quotes quote;
  final Function() delete;
  CardQouotes({required this.quote,required this.delete});
  // ignore: non_constant_identifier_names
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0.0),
      child: Column(children: [
        Text(quote.text,
            style: TextStyle(fontSize: 18.0, color: Colors.grey[900])),
        SizedBox(height: 6.0),
        Text(quote.author,
            style: TextStyle(fontSize: 18.0, color: Colors.pink[900])),
                    SizedBox(height: 6.0),
                    TextButton.icon(
                      onPressed: delete,
                      icon:Icon(Icons.delete),
                      label:Text('delete'),
                    ),

      ]),
    );
  }
}
