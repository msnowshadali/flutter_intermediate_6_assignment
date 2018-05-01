import 'package:flutter/material.dart';
import '../code/globalstate.dart';

class Second extends StatefulWidget {
  @override
  _SecondState createState() => new _SecondState();
}

class _SecondState extends State<Second> {

  GlobalState _store = GlobalState.instance;


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Second'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Text('Value ${_store.get('value')}'),
              new RaisedButton(
                  child:  new Text('Back'),
                  onPressed: (){Navigator.of(context).pop();}
              ),

            ],
          ),
        ),
      ),
    );
  }
}
