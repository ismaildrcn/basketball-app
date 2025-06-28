import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: _topNavBar(context),
      bottomNavigationBar: _bottomNavBar(context),
      body: SafeArea(child: Container()),
    );
  }

  BottomNavigationBar _bottomNavBar(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      unselectedItemColor: Theme.of(context).colorScheme.onPrimary,
      selectedItemColor: Theme.of(context).colorScheme.primary,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          activeIcon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.analytics_outlined),
          activeIcon: Icon(Icons.analytics_rounded),
          label: 'Stats',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.play_arrow_outlined),
          activeIcon: Icon(Icons.play_arrow_rounded),
          label: 'Play',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          activeIcon: Icon(Icons.search_rounded),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_2_outlined),
          activeIcon: Icon(Icons.person_2),
          label: 'Person',
        ),
      ],
    );
  }

  AppBar _topNavBar(BuildContext context) {
    return AppBar(
      leading: Image.asset("assets/img/logo.png"),
      title: Text(
        "Section Title",
        style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
      ),
      centerTitle: true,
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        IconButton(onPressed: () {}, icon: Icon(Icons.notifications_none)),
        IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
      ],
    );
  }
}
