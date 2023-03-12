import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CostumizedAppBar extends StatefulWidget with PreferredSizeWidget {
  const CostumizedAppBar({super.key});

  @override
  State<CostumizedAppBar> createState() => _CostumizedAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _CostumizedAppBarState extends State<CostumizedAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: PopupMenuButton(
        child: const Text(
          "Instagram ",
          style: TextStyle(fontStyle: FontStyle.italic),
        ),
        itemBuilder: (context) => [
          PopupMenuItem(
            value: 1,
            child: Text("Takip"),
          ),
          PopupMenuItem(
            value: 2,
            child: Text("Favoriler"),
          )
        ],
        onSelected: (value) {
          if (value == 1) {
            print("takip pressed");
          } else if (value == 2) {
            print("Favoriler pressed");
          }
        },
      ),
      actions: [
        IconButton(
            onPressed: () {
              print("kalp pressed");
            },
            icon: Icon(Icons.favorite_border)),
        IconButton(
            onPressed: () {
              print("mesaj pressed");
            },
            icon: Icon(Icons.message))
      ],
    );
  }
}
