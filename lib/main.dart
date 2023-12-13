import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
        ),
        body: const Padding(
          padding: EdgeInsets.symmetric(vertical: 50),
          child: Column(
            children: [
              MyContainer(),
              SizedBox(height: 25),
              Icon(
                Icons.download_for_offline_outlined,
                size: 100,
                color: Colors.amber,
              ),
              Spacer(),
              Icon(
                Icons.download_for_offline_outlined,
                size: 100,
                color: Colors.amber,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  const MyContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.red,
        shape: BoxShape.rectangle,
        border: Border.all(
          width: 10,
          color: Colors.black,
        ),
        boxShadow: const [
          BoxShadow(
            offset: Offset(0, 10),
            color: Colors.pink,
            blurRadius: 20,
            spreadRadius: 10,
          ),
        ],
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomRight,
          colors: [
            Colors.red,
            Colors.purple,
            Colors.black,
          ],
        ),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        ),
      ),
      height: 380,
      width: 380,
    );
  }
}
