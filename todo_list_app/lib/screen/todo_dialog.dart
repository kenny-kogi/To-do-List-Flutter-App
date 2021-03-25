import 'package:flutter/material.dart';
import 'package:todo_list_app/models/todo.dart';

// ignore: must_be_immutable
class TodoDialog extends StatelessWidget {
  TextEditingController controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
      return AlertDialog(
        title: Text("New Todo"),
        content: TextField(controller: controller, autofocus: true,),
        actions: [
          // ignore: deprecated_member_use
          FlatButton(onPressed: (){Navigator.of(context).pop();}, child: Text("Cancel")),
          // ignore: deprecated_member_use
          FlatButton(onPressed: (){
            final todo = Todo(title: controller.value.text, isDone: true);
            controller.clear();
            Navigator.of(context).pop(todo);
          }, child: Text("Add")),

        ],
      );
  }
}