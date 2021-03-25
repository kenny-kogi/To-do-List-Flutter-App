import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todo_list_app/screen/todo_list_screen.dart';

void main() {
   SystemChrome.setEnabledSystemUIOverlays([]);
   runApp(MyApp());
 }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: "Todo List App",
      home: TodoListScreen()

    );
  }
}
  