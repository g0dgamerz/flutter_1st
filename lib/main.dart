import 'package:flutter/material.dart';

void main () => runApp(MaterialApp(home:HamroApp(),));

// class HamroApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Jidesh Govinda Baidya"),
//       ),
//       body:Container(
//         child:Column(
//           children: <Widget>[
//             Text("hello world",style: TextStyle(fontSize: 22.2),)
//           ],)
//       )
      
//     );
//   }
// }

class HamroApp extends StatefulWidget {
  @override
  _HamroAppState createState() => _HamroAppState();
}

class _HamroAppState extends State<HamroApp> {
  String name = 'hey man';
  void _onClick(){
    setState(() {
     name="did you just click that button" ;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Button tutorial'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Text(name),
            RaisedButton(onPressed: _onClick,child: Text('clickME'),),
            FlatButton(onPressed: _onClick,child: Text('Flat button'),),
            IconButton(onPressed: _onClick,icon: Icon(Icons.add),)

          ],),
      ),
      
    );
  }
}
