import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SideNavigator extends StatefulWidget {
  const SideNavigator({super.key});

  @override
  State<StatefulWidget> createState() => _SideNavigatorState();
}

class NavigationItem extends NavigationRailDestination{

  final String path;
  const NavigationItem({required this.path, required super.icon, required super.label, super.selectedIcon});
}

class _SideNavigatorState extends State<SideNavigator> {
  int _selectedIndex = 0;
  NavigationRailLabelType labelType = NavigationRailLabelType.all;

  final List<NavigationItem> listNavigation = const [
    NavigationItem(
      icon: Icon(Icons.home_outlined),
      selectedIcon: Icon(Icons.home),
      label: Text('Home'),
      path: '/',
    ),
    NavigationItem(
      icon: Icon(Icons.book_outlined),
      selectedIcon: Icon(Icons.book),
      label: Text('blabla'),
      path: '/blabla',
    ),
    NavigationItem(
      icon: Icon(Icons.settings_outlined),
      selectedIcon: Icon(Icons.settings),
      label: Text('Setting'),
      path: '/settings',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return NavigationRail(
      selectedIndex: _selectedIndex,
      groupAlignment: -1,
      onDestinationSelected: (int index) {
        context.go(listNavigation[index].path);
        setState(() {
          _selectedIndex = index;
        });
      },
      labelType: labelType,
      elevation: 1,
      backgroundColor: Colors.grey[50],
      destinations: listNavigation
    );
  }

}
