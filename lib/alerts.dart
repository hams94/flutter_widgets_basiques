import 'dart:async';

import 'package:flutter/material.dart';

class Alerts extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new _Alerts();
  }

}

class _Alerts extends State<Alerts>{
  @override
  Widget build(BuildContext context) {
    return  new Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        new RaisedButton(
          onPressed: snackBar,
          child: new Text("Snakbar"),
          color: Colors.green,
        ),
        new RaisedButton(
          onPressed: alert,
          child: new Text("alertdialog"),
          color: Colors.green,
        ),
        new RaisedButton(
          onPressed: simpleDialog,
          child: new Text("simpledialog"),
          color: Colors.green,
        ),

      ],
    );
  }

  void snackBar(){
    SnackBar snackBar=new SnackBar(
      content: new Text("ceci est un snackbar"),
      duration: new Duration(seconds: 2),
      backgroundColor: Colors.lightBlue,
    );

    Scaffold.of(context).showSnackBar(snackBar);
  }

  Future<Null> alert(){
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context){
        return new AlertDialog(
          title: new Text("Suppression"),
          content: new Text("Etes vous sur de vouloir supprimer ?") ,
          actions: <Widget>[
            new FlatButton(
                onPressed: (){
                  print("annulé");
                  Navigator.pop(context);
                },
                child: new Text("Non"),
                textColor: Colors.red,
            ),
            new FlatButton(
              onPressed: (){
                print("confirmé");
                Navigator.pop(context);
              },
              child: new Text("Oui"),
              textColor: Colors.green,
            ),
          ],
        );
      }
    );
  }

  Future<Null> simpleDialog(){
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context){
          return new SimpleDialog(
            title: new Text("Confirmation"),
            children: <Widget>[
              new Text("Votre action a été validé avec success"),
              new RaisedButton(
                color: Colors.green,
                onPressed: (){
                  print("ok");
                  Navigator.pop(context);
                },
                child: new Text("Ok"),
              )
            ],

          );
        }
    );
  }

}