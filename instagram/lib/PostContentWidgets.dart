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
      color: Color.fromARGB(255, 16, 16, 16),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          LikeButton(
            is_liked: true,
          ),
          CommentSectionWidget(),
          ShareButton(),
          Spacer(),
          SaveButton(is_saved: true)
        ],
      ),
    );
  }
}

class LikeButton extends StatefulWidget {
  bool is_liked;
  LikeButton({super.key, required this.is_liked});

  @override
  State<LikeButton> createState() => _LikeButtonState(is_liked: is_liked);
}

class _LikeButtonState extends State<LikeButton> {
  bool is_liked;
  _LikeButtonState({required this.is_liked});
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

class CommentSectionWidget extends StatelessWidget {
  const CommentSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          print("Comment pressed");
        },
        icon: Icon(
          Icons.mode_comment_outlined,
          color: Colors.white,
        ));
  }
}

class ShareButton extends StatelessWidget {
  const ShareButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          print("Share pressed");
        },
        icon: Icon(
          Icons.share_sharp,
          color: Colors.white,
        ));
  }
}

class SaveButton extends StatefulWidget {
  bool is_saved;
  SaveButton({super.key, required this.is_saved});

  @override
  State<SaveButton> createState() => _SaveButtonState(is_saved: is_saved);
}

class _SaveButtonState extends State<SaveButton> {
  bool is_saved;
  _SaveButtonState({required this.is_saved});
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: is_saved
          ? Icon(
              Icons.bookmark,
              color: Colors.white,
            )
          : Icon(
              Icons.bookmark_outline,
              color: Colors.white,
            ),
      onPressed: () {
        if (is_saved) {
          setState(() {
            is_saved = false;
          });
        } else {
          setState(() {
            is_saved = true;
          });
        }
      },
    );
  }
}
