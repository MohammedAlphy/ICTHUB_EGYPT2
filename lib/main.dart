import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:todotask/model/ttodos.dart';
import 'package:todotask/ui/screens/HomeScreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    ) ;
  }}



