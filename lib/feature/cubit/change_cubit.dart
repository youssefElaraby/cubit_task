import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import 'change_state.dart';


class ChangeCubit extends Cubit<ChangeState> {
  ChangeCubit() : super(ChangeInitial());

  String text = 'هغيرررررك';
  void changeText() {
    text = 'تم التغير يابررووو';
    emit(ChangeString());
  }
  Color color = Colors.blue;
  void changeColor() {
    color = Colors.green;
    emit(ChangeColor());
  }

  String image = 'assets/images/third_onbord.png';
  void changeImage() {
    image = 'assets/images/ronaldo.jpg';
    emit(ChangeImage());
  }


  String appBarTitle = 'Hellllo Maaaan';
  void changeAppBarTitle(String newTitle) {
    appBarTitle = newTitle;
    emit(ChangeAppBarTitle());
  }


  double number = 0.0;

  void incrementNumber() {
    number += 0.5;
    emit(ChangeNumber());
  }

  void decrementNumber() {
    number -= 0.5;
    emit(ChangeNumber());
  }

  void resetNumber() {
    number = 0.0;
    emit(ChangeNumber());
  }


  String backgroundImage = 'assets/images/ronaldo.jpg';
  void changeBackgroundImage(String newImage) {
    backgroundImage = newImage;
    emit(ChangeBackground());
  }




}
