import 'package:flutter/material.dart';
import 'newpage.dart';

void main(){
  runApp(new MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Mes Widgets de base",
      theme: new ThemeData(
        primarySwatch: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      home: new Home(),
    );
  }

}

class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
      return new _Home();
  }
}

class _Home extends State<Home>{
  @override
  Widget build(BuildContext context) {
    double largeur=MediaQuery.of(context).size.width;
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Mes widgets"),
        elevation: 10.0,
        leading: new Icon(Icons.account_circle),
        centerTitle: true,
        actions: <Widget>[
          new Icon(Icons.local_printshop),
          new Icon(Icons.exit_to_app)
        ],
      ),
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          new Text(
              "Ceci est un texte",
              textScaleFactor: 2.0,
              style: new TextStyle(
                fontStyle: FontStyle.italic,
              ),
          ),
          new IconButton(
              icon: new Icon(Icons.delete),
              onPressed: (){
                print("IconButton appyé");
              },
          ),
          new Center(
            child: new Card(
              elevation: 10.0,
              child: new Container(
                width: MediaQuery.of(context).size.width/2,
                height: MediaQuery.of(context).size.width/2,
                child: new Image.asset('images/hams_photo.jpg'),
              ),
            ),
          ),
          new FlatButton(
              onPressed: (){
                print("flatbutton appuyé");
              },
              child: new Text(
                  "FlatButton",
                style: new TextStyle(
                  color: Colors.green,
                ),
              )
          ),
          new Row(
            children: <Widget>[
              new Icon(
                  Icons.star,
                  size: largeur/13,
                  color: Colors.yellow[900],
              ),
              new Icon(
                Icons.star,
                size: largeur/13,
                color: Colors.yellow[900],
              ),
              new Icon(
                Icons.star,
                size: largeur/13,
                color: Colors.yellow[900],
              ),
              new Icon(
                Icons.star,
                size: largeur/13,
                color: Colors.yellow[900],
              ),
              new Icon(
                Icons.star,
                size: largeur/13,
                color: Colors.yellow[900],
              ),
              new Icon(
                Icons.star,
                size:largeur/13,
                color: Colors.yellow[900],
              ),
              new Icon(
                Icons.star,
                size: largeur/13,
                color: Colors.yellow[900],
              ),
              new Icon(
                Icons.star,
                size: largeur/13,
                color: Colors.yellow[900],
              ),
              new Icon(
                Icons.star,
                size: largeur/13,
                color: Colors.yellow[900],
              ),
              new Icon(
                Icons.star,
                size: largeur/13,
                color: Colors.yellow[900],
              ),
              new Icon(
                Icons.star,
                size: largeur/13,
                color: Colors.yellow[900],
              ),
              new Icon(
                Icons.star,
                size: largeur/13,
                color: Colors.yellow[900],
              )
            ],
          ),
          new RaisedButton(
              onPressed:ouvreNewPage,
              color: Colors.green,
              child: new Text(
                "Nouvelle Page",
                style: new TextStyle(
                  color: Colors.white,
                ),
              ),
            elevation: 10.0,

          )
        ],
      ),
    );
  }

  void ouvreNewPage(){
    Navigator.push(context, new MaterialPageRoute(
        builder: (BuildContext context){
          return new NouvellePage();
        },
    )
    );
  }

}

