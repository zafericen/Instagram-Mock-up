// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class PostContent extends StatelessWidget {
  final String content_url;
  const PostContent({super.key, required this.content_url});

  @override
  Widget build(BuildContext context) {
    return Image.network(content_url);
  }
}

class LikeRow extends StatefulWidget {
  const LikeRow({super.key});

  @override
  State<LikeRow> createState() => _LikeRowState();
}

class _LikeRowState extends State<LikeRow> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [LikeButton()],
      ),
    );
  }
}

class LikeButton extends StatefulWidget {
  const LikeButton({super.key});

  @override
  State<LikeButton> createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  bool is_liked = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: is_liked
          ? Icon(
              Icons.favorite,
              color: Colors.white,
            )
          : Icon(
              Icons.favorite_border,
              color: Colors.white,
            ),
      onPressed: () {
        if (is_liked) {
          setState(() {
            is_liked = false;
          });
        } else {
          setState(() {
            is_liked = true;
          });
        }
      },
    );
  }
}
