
import 'package:flutter/material.dart';

import '../../model/ttodos.dart';
import '../../network/network_request.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    if (NetworkRequest.isLoading) {
      Future.delayed(Duration.zero, () async {
        var data = await NetworkRequest.getData();
        setState(() {
          NetworkRequest.tod = data;
          NetworkRequest.isLoading = false;
        });
      });
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return NetworkRequest.isLoading ?
        const CircularProgressIndicator() : Scaffold(
      backgroundColor: Colors.grey[850],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:2),
          child: GridView.builder(
            itemCount: NetworkRequest.tod.length,
            itemBuilder: (BuildContext context, int index) {

              return TextAndIcon(

                tod: NetworkRequest.tod[index],
              );

            },
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          ),
        ),
      ),
    );
  }
}
