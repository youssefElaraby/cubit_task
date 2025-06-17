import 'package:flutter/material.dart';

import 'drawer_item.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.white),
              child: Text(
                'وَآخِرُ دَعْوَاهُمْ أَنِ الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ🤍',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 24),
              ),
            ),
            DrawerItem(title: 'سبحان الله'),
            DrawerItem(title: 'الحمد لله'),
            DrawerItem(title: 'لا إله إلا الله'),
            DrawerItem(title: 'الله أكبر'),
          ],
        ),
      ),
    );
  }
}
