import 'package:flutter/material.dart';

import 'home.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  AppBar _buildAppBar(){
    return AppBar(
        elevation: 0,
        actions: const [
          Icon(Icons.search, //color: Colors.black
          ),
          SizedBox(
            width: 20,
          ),
          Icon(Icons.cast, //color: Colors.black
          ), 
          SizedBox(
            width: 20,
          ),
          Icon(Icons.notifications, //color: Colors.black
          ),
          SizedBox(
            width: 50,
          )],
        backgroundColor: Colors.transparent, 
        title: SizedBox(
          height: 100,
          child: Image.network('https://freelogopng.com/images/all_img/1656504144youtube-logo-png-white.png')
          ));
  }

  List<BottomNavigationBarItem> _getItems(){
    return const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.subscriptions), label: 'Subscriptions'),
        BottomNavigationBarItem(icon: Icon(Icons.library_add), label: 'Library')
      ];
  }

  List<Widget> _screens(){
    return [Home(), Text('Subscription'), Text('Library')];
  }

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens()[index],                        //index ke hisab se screens function will return home or subscription or library
      appBar: _buildAppBar(),
      bottomNavigationBar: 
        BottomNavigationBar(
          onTap: (int currentIndex){
            index = currentIndex;
            setState(() {});
          },
          currentIndex: index,
          items: _getItems()),
    );
  }
}