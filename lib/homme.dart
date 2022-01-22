import "package:flutter/material.dart";

class Homme extends StatefulWidget {
  Homme({Key? key}) : super(key: key);

  @override
  _HommeState createState() => _HommeState();
}

class _HommeState extends State<Homme> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Text("Emilio Home"),
    ));
  }
}
