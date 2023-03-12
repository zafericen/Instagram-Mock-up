// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class PostHeadline extends StatelessWidget {
  final String url;

  const PostHeadline({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 16, 16, 16),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.all(6),
            child: PostHeadlineProfilePicture(
              url: url,
            ),
          ),
          Text(
            "Mal_Gökhan_81",
            style: TextStyle(color: Colors.white),
          ),
          Spacer(),
          PopUpPostSettings(),
        ],
      ),
    );
  }
}

class PostHeadlineProfilePicture extends StatelessWidget {
  final String url;

  const PostHeadlineProfilePicture({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            border:
                Border.all(width: 1, color: Color.fromARGB(255, 16, 16, 16)),
            borderRadius: BorderRadius.circular(100),
            image: DecorationImage(
                fit: BoxFit.fitWidth, image: NetworkImage(url))));
  }
}

class PopUpPostSettings extends StatelessWidget {
  const PopUpPostSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      child: Icon(
        Icons.more_vert,
        color: Colors.white,
      ),
      itemBuilder: (context) => [
        //daha fazla seçenek eklenecek
        PopupMenuItem(
          value: 1,
          child: Text("Şikayet Et"),
        ),
        PopupMenuItem(
          value: 2,
          child: Text("Takibi Bırak"),
        )
      ],
      onSelected: (value) {
        if (value == 1) {
          print("Şikayet Et pressed");
        } else if (value == 2) {
          print("Takibi Bırak pressed");
        }
      },
    );
  }
}
