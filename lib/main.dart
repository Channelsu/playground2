import 'package:flutter/material.dart';
import 'package:playground/message_widget.dart';
import 'package:playground/pages/playground_page.dart';
import 'package:playground/pages/settings_page.dart';
import 'package:playground/pages/word_cards_list_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  // ボトムナビゲーションで表示される画面群
  final screens = [
    WordCardsListPage(),
    SettingsPage(),
    PlaygroundPage(),
  ];

  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }

  final cardList = [
    "タイトル1",
    "タイトル2",
    "タイトル3",
    "タイトル4",
    "タイトル5",
    "タイトル6",
    "タイトル7"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(widget.title),
      //   centerTitle: true,
      // ),
      // body: SafeArea(
      //   child: MessageWidget()
      // ),
      // body: ListWheelScrollView(
      //   itemExtent: 150,
      //   physics: FixedExtentScrollPhysics(),
      //   children: cardList
      //         .map((element) => Container(
      //           height: 80,
      //           width: 300,
      //           color: Colors.teal,
      //           child: Center(child: Text(element)),
      //         ))
      //         .toList(),
      // ),
      body: screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) => setState(() => _selectedIndex = index),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chats'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'Calls'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'playground',
          ),
        ],
      ),
    );
  }
}
