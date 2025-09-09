import 'package:flutter/material.dart';

class THAppBar extends StatelessWidget  implements PreferredSizeWidget{
  const THAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.green,
      title: Row(
        spacing: 8,
        children: [
          CircleAvatar(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Nasir Uddin",
                style: Theme.of(context)
                    .textTheme
                    .titleSmall
                    ?.copyWith(color: Colors.white),
              ),
              Text(
                "nasiruddin3954@gmail.com",
                style: Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.copyWith(color: Colors.white),
              )
            ],
          ),

        ],
      ),
      actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.logout, color: Colors.white,))
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(56);
}