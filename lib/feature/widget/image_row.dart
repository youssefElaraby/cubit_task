import 'package:cubit_task/feature/widget/ustom_image_circle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/change_cubit.dart';

class ImageRow extends StatelessWidget {
  const ImageRow({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ChangeCubit>();

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ImageCircle(
          image: 'assets/images/ronaldo.jpg',
          onTap: () => cubit.changeBackgroundImage('assets/images/ronaldo.jpg'),
        ),
        ImageCircle(
          image: 'assets/images/cat.jpg',
          onTap: () => cubit.changeBackgroundImage('assets/images/cat.jpg'),
        ),
        ImageCircle(
          image: 'assets/images/ij.jpg',
          onTap: () => cubit.changeBackgroundImage('assets/images/ij.jpg'),
        ),
        ImageCircle(
          image: 'assets/images/grad.jpg',
          onTap: () => cubit.changeBackgroundImage('assets/images/grad.jpg'),
        ),
      ],
    );
  }
}
