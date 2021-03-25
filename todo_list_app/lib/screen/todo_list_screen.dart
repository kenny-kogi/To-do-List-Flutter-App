import 'package:flutter/material.dart';
import 'package:todo_list_app/models/todo.dart';
import 'package:todo_list_app/screen/TodoList.dart';
import 'package:todo_list_app/screen/todo_dialog.dart';

class TodoListScreen extends StatefulWidget {
  @override
  _TodoListScreenState createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {
  

 
   List<Todo> todos = [];
   _toggleTodo(Todo todo, bool isChecked){
    setState(() {
      todo.isDone = isChecked;
    });
  }


  _addTodo() async{
    final todo = await showDialog<Todo>(
    context: context, 
    builder: (BuildContext context){
       return TodoDialog();
    }
    );
    if (todo != null){
      setState(() {
        todos.add(todo);
        
      });
      
    }
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("ToDo List App "),),
      body: TodoList( todos: todos,
        onTodoToggle: _toggleTodo,),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          _addTodo();  
        },
      ),
    );
  }

 
}