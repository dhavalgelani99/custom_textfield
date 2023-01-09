import 'package:flutter/material.dart';
import 'package:textfield_shadow/textfield_shadow.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final TextEditingController controller = TextEditingController();
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: CustomTextfield(
              size: size,
              controller: controller,
              prefixIcon: const Icon(Icons.lock, size: 16, color: Colors.blue),
              hintStr: "Password",
              suffixIcon: const Icon(Icons.remove_red_eye, size: 22, color: Colors.black),
            ),
          )
        ],
      ),
    );
  }
}

