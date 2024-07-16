import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  final List<String> items;
  final List<IconData> icons;
  final AnimationController animationController;
  final String activeScreen;
  final Function(String) onItemTap;

  const CustomDrawer({super.key, 
    required this.items,
    required this.icons,
    required this.animationController,
    required this.activeScreen,
    required this.onItemTap,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: items.length + 1, // +1 for the DrawerHeader
        itemBuilder: (context, index) {
          if (index == 0) {
            return const UserAccountsDrawerHeader(
              accountName: Text('John Doe'),
              accountEmail: Text('john.doe@example.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/user.jpg'),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            );
          } else {
            final animation = Tween<Offset>(
              begin: const Offset(1, 0),
              end: const Offset(0, 0),
            ).animate(
              CurvedAnimation(
                parent: animationController,
                curve: Interval(
                  (index - 1) * 0.2,
                  1.0,
                  curve: Curves.easeInOut,
                ),
              ),
            );

            return SlideTransition(
              position: animation,
              child: ListTile(
                leading: Icon(icons[index - 1], color: activeScreen == items[index - 1] ? Colors.green : Colors.grey),
                title: Text(
                  items[index - 1],
                  style: TextStyle(color: activeScreen == items[index - 1] ? Colors.green : Colors.grey),
                ),
                onTap: () => onItemTap(items[index - 1]),
              ),
            );
          }
        },
      ),
    );
  }
}
