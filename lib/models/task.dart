import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_app/constants/colors.dart';

class Task {
  IconData? iconData;
  String? title;
  Color? bgColor;
  Color? iconColor;
  Color? buttonColor;
  num? left;
  num? done;
  bool isLast;
  Task(
      {this.iconData,
      this.title,
      this.bgColor,
      this.iconColor,
      this.buttonColor,
      this.left,
      this.done,
      this.isLast = false});
  static List<Task> generateTasks() {
    return [
      Task(
          iconData: Icons.person_rounded,
          title: "Personal",
          bgColor: kYellowLight,
          iconColor: kYellowDark,
          buttonColor: kYellow,
          left: 3,
          done: 1),
      Task(
          iconData: Icons.cases_rounded,
          title: "Work",
          bgColor: kRedLight,
          iconColor: kRedDark,
          buttonColor: kRed,
          left: 0,
          done: 0),
      Task(
          iconData: Icons.favorite_rounded,
          title: "Health",
          bgColor: kBlueLight,
          iconColor: kBlueDark,
          buttonColor: kBlue,
          left: 0,
          done: 0),
      Task(isLast: true)
    ];
  }
}