import 'package:flutter/material.dart';

class ShowAvatar extends StatelessWidget {
  const ShowAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 100.0,
          height: 100.0,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [Color(0xFFE3C907), Color(0xFF9B04B3)],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
        ),
        Positioned(
          left: 5,
          right: 5,
          top: 5,
          bottom: 5,
          child: Container(
            width: 90.0,
            height: 90.0,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Colors.white),
          ),
        ),
        Positioned(
          left: 5,
          right: 5,
          top: 5,
          bottom: 5,
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            child: ClipOval(
              child: Image.asset(
                'assets/images/photo_main.png',
                width: 80.0,
                height: 80.0,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
