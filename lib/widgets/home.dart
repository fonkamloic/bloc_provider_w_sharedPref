import 'package:flutter/material.dart';
import 'package:flutter_bloc_with_provider/widgets/settings.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(child: RaisedButton(child: Text('Settings'), onPressed: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Settings()));
      },),),
    );
  }
}
