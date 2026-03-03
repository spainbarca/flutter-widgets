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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.blue),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Appbar"),
        centerTitle: true,
        elevation: 20,
        shadowColor: Colors.red,
        actions: [
          CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage("https://a.espncdn.com/combiner/i?img=/i/teamlogos/soccer/500/6097.png"),
          ),
          Icon(Icons.search)
        ],
        leading: Icon(Icons.photo_camera),
      ),
    );
  }
}
