import 'package:flutter/material.dart';

class PassionsCard extends StatefulWidget {
  final String passionName;
  final IconData passionIcon;

  const PassionsCard({
    Key? key,
    required this.passionName,
    required this.passionIcon,
  }) : super(key: key);

  @override
  _PassionsCardState createState() => _PassionsCardState();
}

class _PassionsCardState extends State<PassionsCard> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        isSelected = !isSelected;
        setState(() {});
      },
      child: Card(
        color: isSelected ? Colors.red : Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          side: BorderSide(color: Colors.grey.shade300, width: 1),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Icon(
                widget.passionIcon,
                color: isSelected ? Colors.white : Colors.red,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                widget.passionName,
                style: TextStyle(
                  color: isSelected ? Colors.white : Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
