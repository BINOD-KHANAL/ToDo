import 'package:flutter/material.dart';
import 'package:todo/models/todomodel.dart';

class ToDOItem extends StatelessWidget {
  final ToDo todo;
  final onToDoChanged;
  final onDeleteItem;
  const ToDOItem(
      {Key? key,
      required this.todo,
      required this.onDeleteItem,
      required this.onToDoChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          onTap: () {
            onToDoChanged(todo);
          },
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          tileColor: Colors.white,
          leading: Icon(
            todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
            color: Colors.deepPurple,
          ),
          title: Text(
            todo.todoText!,
            style: TextStyle(
              fontSize: 16,
                color: Colors.green,
                decoration: todo.isDone ? TextDecoration.lineThrough : null),
          ),
          trailing: Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.deepPurpleAccent),
              // color: Colors.deepPurpleAccent,
              child: IconButton(
                  padding: EdgeInsets.symmetric(vertical: 0),
                  color: Colors.white,
                  onPressed: () {
                    onDeleteItem(todo.id);
                  },
                  icon: Icon(Icons.delete)
              )),
        ),
      ),
    );
  }
}
