import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext cogitntext) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title : 'Jawaban uts sayyid abdul wasye',
      home: Scaffold(body : Center(
        child : Text("hallo")
      ),
      ),
    );
  }
}
