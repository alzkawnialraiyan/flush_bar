import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FlushBarScreen(),
    );
  }
}
class FlushBarScreen extends StatefulWidget {
  const FlushBarScreen({super.key});

  @override
  State<FlushBarScreen> createState() => _FlushBarScreen();
}

class _FlushBarScreen extends State<FlushBarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Center(
            child: MaterialButton(
              onPressed: (){
                Flushbar(
                  margin: EdgeInsets.all(8),
                  borderRadius: BorderRadius.circular(10),
                  flushbarPosition: FlushbarPosition.TOP,
                  flushbarStyle: FlushbarStyle.FLOATING,
                  title:  "Hello",
                  message:  "Welcome to Flush Bar",
                  icon: Icon(Icons.info_outline_rounded, color: Colors.white,),
                  duration:  Duration(seconds: 4),
                )..show(context);
              },child: Text("Click Me"),
            ),
          ),
        ),
    );
  }
}
