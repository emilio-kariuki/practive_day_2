// ignore_for_file: deprecated_member_use

import "package:flutter/material.dart";
import 'custom.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function() delete;
  // ignore: prefer_const_constructors_in_immutables
  QuoteCard({Key? key, required this.quote, required this.delete}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 5, 5, 0),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        color: Colors.white60,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                quote.text,
                style: TextStyle(
                  // fontSize: 20.0,
                  color: Colors.grey[800],
                  letterSpacing: 0.3,
                ),
              ),
              Text(
                quote.author,
                style: TextStyle(
                  // fontSize: 20.0,
                  color: Colors.grey[800],
                  letterSpacing: 0.3,
                ),
              ),
              FlatButton.icon(
                onPressed: delete,
                icon: Icon(Icons.delete),
                label: Text("Delete")),
            ],
          ),
        ),
      ),
    );
  }
}
