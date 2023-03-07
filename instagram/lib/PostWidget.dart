// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:instagram/PostContentWidgets.dart';

import 'PostContentWidgets.dart';
import 'PostHeadlineWidget.dart';

class Postwidget extends StatefulWidget {
  const Postwidget({super.key});

  @override
  State<Postwidget> createState() => _PostwidgetState();
}

class _PostwidgetState extends State<Postwidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        PostHeadline(
            url:
                "https://media.sproutsocial.com/uploads/2022/06/profile-picture.jpeg"),
        PostContent(
          content_url:
              "https://static1.cbrimages.com/wordpress/wp-content/uploads/2022/08/yuyu-wong-elden-ring-fan-art.jpeg",
        ),
        LikeRow()
      ],
    );
  }
}
