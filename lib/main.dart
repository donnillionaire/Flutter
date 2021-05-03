import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

//void main() {
// runApp(MyApp());
//}

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<String> _products = ["Foot Machine"];

  @override // this means it will override its base class
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('List'),
        ),
        body: Column(children: <Widget>[
          Container(
            margin: EdgeInsets.all(10.0), //margin
            child: RaisedButton(
              onPressed: () {
                /***SET STATE METHOD***/
                setState(() {
                  _products.add("Advanced Food Tester");
                });
              },
              child: Text('Add Product'),
            ),
          ),
          Column(
            children: _products
                .map((element) => Card(
                      child: Column(
                        children: <Widget>[
                          Image.asset('assets/food.jpg'),
                          Text(element)
                        ],
                      ),
                    ))
                .toList(),
          ),
        ]),
      ),
    );
  }
}
