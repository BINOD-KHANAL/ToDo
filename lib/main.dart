
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todo/view/viewpage.dart';

void main(){
  runApp(const Home());

}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent)
        );
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'ToDo App',

      home:ViewPage(),
    );
  }
}
