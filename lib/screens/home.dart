import 'package:flutter/material.dart';
import '../code/globalstate.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {

  GlobalState _store = GlobalState.instance;


  @override
  void initState() {
    _store.set('value', 0);

  }

  void _increment() {
    int value = _store.get('value');
    value++;
    setState(() => _store.set('value', value));
  }

  void _decrement() {
    int value = _store.get('value');
    value--;
    setState(() => _store.set('value', value));
  }

  void _onPressed() {
    Navigator.of(context).pushNamed('/Second');
  }



  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Home'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Text('Value ${_store.get('value')}'),
              new IconButton(icon: new Icon(Icons.add), onPressed: _increment),
              new IconButton(icon: new Icon(Icons.remove), onPressed: _decrement),

              new RaisedButton(
                  child:  new Text('Click me'),
                  onPressed: _onPressed,
              )
            ],
          ),
        ),
      ),
    );
  }
}
