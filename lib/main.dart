import 'package:flutter/material.dart';
import "Quote.dart";
import "custom.dart";
import "homme.dart";

void main() {
  runApp(MaterialApp(
      initialRoute: "/main",
      debugShowCheckedModeBanner: false,
      routes: {
        "/home": (context) => Homme(),
        "/main": (context) => Home(),
      }));
}

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

List<Quote> quotes = [
  Quote(
      text: "Control is an illusion The if block may",
      author: "Emilio kariuki"),
  Quote(
      text: "Control is an illusion The if block may",
      author: "Emilio kariukim"),
  Quote(
      text: "Control is an illusion The if block may", author: "Emilio kariuki")
];

Color back = Colors.white;
Color home = Colors.white;

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Emilio",
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.grey[800],
            letterSpacing: 0.3,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/home');
                setState(() {
                  if (home == Colors.white) {
                    home = Colors.amber;
                  } else if (home == Colors.amber) {
                    home = Colors.white;
                  }
                });
              },
              icon: Icon(Icons.home, color: home)),
          IconButton(
              onPressed: () {
                setState(() {
                  if (back == Colors.white) {
                    back = Colors.red;
                  } else if (back == Colors.red) {
                    back = Colors.white;
                  }
                });
              },
              icon: Icon(Icons.favorite, color: back))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: quotes
              .map((quote) => QuoteCard(
                  quote: quote,
                  delete: () {
                    setState(() {
                      quotes.remove(quote);
                    });
                  }))
              .toList(),
        ),
      ),
    );
  }
}
