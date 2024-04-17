import 'package:flutter/material.dart';
import 'package:basic/Screens/first_screens.dart';
import 'package:basic/Screens/second_screens.dart';
import 'package:basic/Screens/third_screens.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyApp',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget{
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('MyApp'),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(
              text: 'tab1',
            ),
            Tab(
              text: 'tab2',
            ),
            Tab(
              text: 'tab3',
            )
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => firstScreens()),
                  );
                },
                child: Text(
                    'use Stack'
                ),
              )
          ),
          Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => firstScreens()),
                  );
                },
                child: Text(
                    'use Image'
                ),
              )
          ),
        ],
      ),
    );
  }
}
