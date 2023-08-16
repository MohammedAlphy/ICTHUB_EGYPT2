
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Todos {
  int? id;
  String? todo;
  bool? completed;
  int? userId;


  Todos({this.id, this.todo, this.completed, this.userId});

  Todos.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    todo = json['todo'];
    completed = json['completed'];
    userId = json['userId'];
  }

}






class TextAndIcon extends StatelessWidget {
  final Todos tod;

  const TextAndIcon({super.key, required this.tod});
  @override
  Widget build(BuildContext context) {

    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          padding: const EdgeInsets.symmetric( horizontal: 10 ,vertical: 5),
          height: 150,
          width: 150,
          decoration: const BoxDecoration(
            color: Colors.black12
          ),
          margin: const EdgeInsets.all(10),
          child: Text(
            tod.todo as String,
            style: const TextStyle(color: Colors.white),
          textScaleFactor: 1.2, ),
        ),

        Positioned(
          left: 100,
          right: 0,
          bottom: 30,
          child: Container(
            height: 30,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            alignment: Alignment.center,
            child: Text(
              tod.completed! ? 'ok':'no',
            ),
          ),
        ),
      ],
    );
  }
}