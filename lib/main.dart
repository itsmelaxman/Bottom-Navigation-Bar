import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Bottom Navigation Bar',
    home: MainPage(),
  ));
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  List<Widget> meroWidget = <Widget>[
    // for home
    Container(
      color: Colors.lightBlue[50],
      child: Center(
        child: Text("Welcome to Home"),
      ),
    ),
//for about us
    Container(
      color: Colors.lightBlue[50],
      child: Center(
        child: Text("Welcome to About Us"),
      ),
    ),
//for setting
    Container(
      color: Colors.lightBlue[50],
      child: Center(
        child: Text("Welcome to Settings"),
      ),
    ),
  ];

  _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Navigation Bar'),
        backgroundColor: Colors.indigo[700],
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          //for home
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.indigo[700],
            ),
            backgroundColor: Colors.indigo[700],
            label: 'Home',
          ),

          //for about us
          BottomNavigationBarItem(
            icon: Icon(
              Icons.info,
              color: Colors.indigo[700],
            ),
            backgroundColor: Colors.indigo[700],
            label: 'About Us',
          ),
          //for setting
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: Colors.indigo[700],
            ),
            backgroundColor: Colors.indigo[700],
            label: 'Setting',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
      ),
      body: Center(
        child: meroWidget.elementAt(_selectedIndex),
      ),
    );
  }
}
