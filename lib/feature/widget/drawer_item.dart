import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/change_cubit.dart';

class DrawerItem extends StatelessWidget {
  final String title;
  const DrawerItem({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Center(
        child: Text(
          title,
          style: const TextStyle(color: Colors.black),
        ),
      ),
      onTap: () {
        context.read<ChangeCubit>().changeAppBarTitle(title);
        Navigator.pop(context);
      },
    );
  }
}
