import 'dart:convert' as convert;
import 'package:flutter/foundation.dart';
import 'package:todotask/model/ttodos.dart';
import 'package:http/http.dart' as http;
import 'package:todotask/main.dart';



class NetworkRequest {

static Future<List<Todos>> getData() async{
  
  final response = await http.get(Uri.parse('https://dummyjson.com/todos'));
  List<Todos> TodosList = [] ;

  if(response.statusCode == 200) {
    var jsonResponse =
    convert.jsonDecode(response.body) as Map<String, dynamic>;
    for (var item in jsonResponse['todos']){
      TodosList.add(Todos.fromJson(item));
    }
  }
  return TodosList;
  }

 static List <Todos> tod = [] ;
static bool isLoading = true ;



}






