import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Montejo Activity 4',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('Montejo Activity 4')),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // EdgeInsets examples from CCE106_LoginRegister, slide 21.
              // EdgeInsets.all()
              Container(
                color: Colors.grey[300],
                child: Container(
                  padding: const EdgeInsets.all(30),
                  color: Colors.red,
                  child: const Text('EdgeInsets.all(30)'),
                ),
              ),
              const SizedBox(height: 30),

              // EdgeInsets.symmetric()
              Container(
                color: Colors.grey[300],
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 10,
                  ),
                  color: Colors.yellow,
                  child: const Text(
                    'EdgeInsets.symmetric(horizontal: 40, vertical: 10)',
                  ),
                ),
              ),
              const SizedBox(height: 30),

              // EdgeInsets.only()
              Container(
                color: Colors.grey[300],
                child: Container(
                  padding: const EdgeInsets.only(
                    left: 30,
                    top: 10,
                    right: 5,
                    bottom: 20,
                  ),
                  color: Colors.blue,
                  child: const Text(
                    'EdgeInsets.only(left: 30, top: 10, right: 5, bottom: 20)',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 30),

              // EdgeInsets.fromLTRB()
              Container(
                color: Colors.grey[300],
                child: Container(
                  padding: const EdgeInsets.fromLTRB(10, 20, 30, 40),
                  color: Colors.green,
                  child: const Text(
                    'EdgeInsets.fromLTRB(10, 20, 30, 40)',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
