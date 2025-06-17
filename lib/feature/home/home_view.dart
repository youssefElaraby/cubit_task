import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/change_cubit.dart';
import '../cubit/change_state.dart';
import '../widget/Drawer.dart';
import '../widget/count_number_item.dart';
import '../widget/image_row.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChangeCubit, ChangeState>(
      listener: (context, state) {
        if (state is ChangeAppBarTitle) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('تم تغيير العنوان')),
          );
        } else if (state is ChangeBackground) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('تم تغيير الخلفية')),
          );
        } else if (state is ChangeNumber) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('تم تعديل الرقم')),
          );
        }
      },
      builder: (context, state) {
        final cubit = context.read<ChangeCubit>();

        return Scaffold(
          appBar: AppBar(
            title: Text(cubit.appBarTitle),
            centerTitle: true,
          ),
          drawer: const MyDrawer(),
          body: Stack(
            children: [
              Positioned.fill(
                child: Image.asset(
                  cubit.backgroundImage,
                  fit: BoxFit.cover,
                ),
              ),

              Column(
                children: [
                  const Spacer(),

                  CountNumberItem(),


                  const SizedBox(height: 32),

                  const Padding(
                    padding: EdgeInsets.only(bottom: 20.0),
                    child: Text(
                      'اضغط على صورة لتغيير الخلفية',
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(bottom: 40.0),
                    child: ImageRow(),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
