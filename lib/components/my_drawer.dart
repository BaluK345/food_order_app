import 'package:flutter/material.dart';
import 'package:food_delivery/components/my_drawer_tile.dart';
import 'package:food_delivery/pages/settings_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    var children = [
             Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: Icon(
                Icons.lock_open_rounded,
                size: 80,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Divider(
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
            MyDrawerTile(
              text: "H O M E",
              icon: Icons.home,
              onTap: () => Navigator.pop(context),
            ),
            MyDrawerTile(
              text: "S E T T I N G S",
              icon: Icons.settings,
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                   MaterialPageRoute(
                    builder: (context) => const SettingsPage(),
                ));
              },
            ),

            MyDrawerTile(
              text: "L O G O U T",
              icon: Icons.logout,
              onTap: () {},
            ),
          ];
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: SingleChildScrollView(
        child: Column(
          children: children,
        ),
      ),
    );
  }
}
