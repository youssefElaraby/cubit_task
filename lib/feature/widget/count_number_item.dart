import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/change_cubit.dart';
import 'bottons.dart';

class CountNumberItem extends StatelessWidget {
  const CountNumberItem({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ChangeCubit>();

    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.5),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Text(
            '${cubit.number}',
            style: const TextStyle(
              fontSize: 72,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        const SizedBox(height: 20),

        Bottons(),
      ],
    );
  }
}
