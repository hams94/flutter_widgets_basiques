import 'package:flutter/material.dart';
import 'alerts.dart';

class NouvellePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new Home();
  }
}

class Home extends State<NouvellePage>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Nouvelle Page"),
        centerTitle: true,
      ),
      body: new Alerts(),
    );
  }


}