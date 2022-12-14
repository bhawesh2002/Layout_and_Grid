import 'package:flutter/material.dart';
import 'package:ui_ux/custom%20widgest/custom_drawer.dart';

void main() {
  runApp(const UiUx());
}

class UiUx extends StatelessWidget {
  const UiUx({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "UiUX",
      theme: ThemeData(primaryColor: Colors.blue),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home")),
      drawer: const MyDrawer(),
      body: Center(
        child: GestureDetector(
          onTap: () {
            final snackBar = SnackBar(
              content: const Text(
                'Welcome \'HOME\'',
                style: TextStyle(fontSize: 17),
              ),
              action: SnackBarAction(
                  label: "GREAT!", textColor: Colors.blue, onPressed: () {}),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          child: const Icon(
            Icons.home,
            size: 100,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
