import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Basic widget"),
          backgroundColor: Colors.purple,

          ),
           drawer: Drawer(
            child: ListView(children: <Widget>[
              DrawerHeader(
                child: Text('Sahuf')),
              ListTile(
                title: Text('HOME'),
                onTap: ()
                {},
              ),
              ListTile(
                title: Text('ABOUT US'),
                onTap: ()
                {},
              ),
              ListTile(
                title: Text('CONTACT US'),
                onTap: ()
                {},
              ),
            ],),
           ),
           body:Center(
            child:Column(
              children: [
                Image.asset('assets/images/404.png',
                 width: 200),
                Image.network('https://picsum.photos/250?image=9'),
                 SizedBox(height: 20),
                 Text("404 not found"),],),
              
           ),
           bottomNavigationBar: BottomNavigationBar(items:[
BottomNavigationBarItem(icon: Icon(Icons.home),label: 'home'),
BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'settings'),
BottomNavigationBarItem(icon: Icon(Icons.search),label: 'search'),
           ],
           selectedItemColor: Colors.blue,
           onTap:(int index){},
           ),
          
          ),
    );
  }
}
