import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/change_cubit.dart';

class Bottons extends StatelessWidget {
  const Bottons({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ChangeCubit>();

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FloatingActionButton(
          heroTag: 'dec',
          backgroundColor: Colors.redAccent,
          onPressed: cubit.decrementNumber,
          child: const Icon(Icons.remove),
        ),
        const SizedBox(width: 20),
        FloatingActionButton(
          heroTag: 'reset',
          backgroundColor: Colors.amber,
          onPressed: cubit.resetNumber,
          child: const Icon(Icons.refresh),
        ),
        const SizedBox(width: 20),
        FloatingActionButton(
          heroTag: 'inc',
          backgroundColor: Colors.green,
          onPressed: cubit.incrementNumber,
          child: const Icon(Icons.add),
        ),
      ],
    );
  }
}
