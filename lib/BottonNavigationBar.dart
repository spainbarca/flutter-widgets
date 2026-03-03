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
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Butones en Flutter"),
      ),
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Colors.red.shade100,
          labelTextStyle: WidgetStatePropertyAll(TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400))
        ),
        child: NavigationBar(
          backgroundColor: Colors.yellow,
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          selectedIndex: 0,
          height: 55,
          destinations: [
            NavigationDestination(
              icon: Icon(Icons.home_outlined), 
              selectedIcon: Icon(Icons.home),
              label: 'Inicio'
            ),
            NavigationDestination(
              icon: Icon(Icons.category_outlined),
              selectedIcon: Icon(Icons.category), 
              label: 'Categorías'
            ),
            NavigationDestination(
              icon: Icon(Icons.paid_outlined),
              selectedIcon: Icon(Icons.paid),
              label: 'Pagos'
            ),
            NavigationDestination(
              icon: Icon(Icons.settings_outlined),
              selectedIcon: Icon(Icons.settings),
              label: 'Ajustes'
            ),
          ], 
        ),
      ),
      body: Center(
        child: Text("Ejemplo de BottonBar"),
      ),
    );
  }
}
