import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nba_app/screens/home.dart';

class AppRoutes {
  AppRoutes._();
  static const String home = '/';
  static const String stats = '/stats';
  static const String play = '/play';
  static const String search = '/search';
  static const String person = '/person';
}

final appRoutes = GoRouter(
  initialLocation:
      '/', //Uygulama başlatıldığında varsayılan başlangıç konumunu temsil eder.
  routes: [
    ShellRoute(
      builder: (context, state, child) {
        return Scaffold(
          backgroundColor: Theme.of(context).colorScheme.surface,
          appBar: _topNavBar(context),
          bottomNavigationBar: _bottomNavBar(context, state),
          body: SafeArea(child: child),
        );
      },
      routes: [
        GoRoute(
          name: "home",
          path: AppRoutes.home,
          pageBuilder: (context, state) {
            return const MaterialPage(child: HomePage(page: "home"));
          },
        ),
        GoRoute(
          name: "stats",
          path: AppRoutes.stats,
          pageBuilder: (context, state) {
            return const MaterialPage(child: HomePage(page: "stats"));
          },
        ),
        GoRoute(
          name: "play",
          path: AppRoutes.play,
          pageBuilder: (context, state) {
            return const MaterialPage(child: HomePage(page: "play"));
          },
        ),
        GoRoute(
          name: "search",
          path: AppRoutes.search,
          pageBuilder: (context, state) {
            return const MaterialPage(child: HomePage(page: "search"));
          },
        ),
        GoRoute(
          name: "person",
          path: AppRoutes.person,
          pageBuilder: (context, state) {
            return const MaterialPage(child: HomePage(page: "person"));
          },
        ),
      ],
    ),
  ],
);

BottomNavigationBar _bottomNavBar(BuildContext context, GoRouterState state) {
  final String location = state.uri.toString();
  int currentIndex = 0;
  if (location == '/stats') {
    currentIndex = 1;
  } else if (location == '/play') {
    currentIndex = 2;
  } else if (location == '/search') {
    currentIndex = 3;
  } else if (location == '/person') {
    currentIndex = 4;
  }

  return BottomNavigationBar(
    currentIndex: currentIndex,
    onTap: (index) {
      switch (index) {
        case 0:
          GoRouter.of(context).go('/');
          break;
        case 1:
          GoRouter.of(context).go('/stats');
          break;
        case 2:
          GoRouter.of(context).go('/play');
          break;
        case 3:
          GoRouter.of(context).go('/search');
          break;
        case 4:
          GoRouter.of(context).go('/person');
          break;
      }
    },
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
