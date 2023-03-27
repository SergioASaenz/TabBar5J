import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
} //mi app

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
} //MyHomePage

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(50), // Creates border
                color: Colors.greenAccent),
            tabs: [
              Tab(icon: Icon(Icons.fastfood)),
              Tab(icon: Icon(Icons.money)),
              Tab(icon: Icon(Icons.food_bank_sharp)),
              Tab(icon: Icon(Icons.add_shopping_cart_sharp)),
            ],
          ),
          title: Text('Tabs Demo'),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.fastfood, size: 350),
            Icon(Icons.money, size: 350),
            Icon(Icons.food_bank_sharp, size: 350),
            Icon(Icons.add_shopping_cart_sharp, size: 350),
          ],
        ),
      ),
    );
  }
} //_MyHomePageState
