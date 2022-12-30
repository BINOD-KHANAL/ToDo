

class ToDo{
  String? id;
  String? todoText;
  bool isDone;
  ToDo({required this.id,required this.todoText,this.isDone=false});
  static List<ToDo> todoList(){
    return [
      ToDo(id: '01', todoText:'Homework', isDone: true ),
      ToDo(id: '02', todoText:'Excercise', isDone: false ),
      ToDo(id: '03', todoText:'dinner', isDone: true ),
      ToDo(id: '01', todoText:'Homework', isDone: true ),
      ToDo(id: '02', todoText:'Excercise', isDone: false ),
      ToDo(id: '03', todoText:'dinner', isDone: true ),


    ];


  }



}




