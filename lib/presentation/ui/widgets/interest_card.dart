import 'package:flutter/material.dart';

class InterestCard extends StatefulWidget {
  const InterestCard({
    super.key,
    required this.interest,
  });

  final String interest;

  @override
  State<InterestCard> createState() => _InterestCardState();
}

class _InterestCardState extends State<InterestCard> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        isSelected = !isSelected;
        setState(() {});
      },
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
          side: BorderSide(
              color: isSelected ? Colors.red : Colors.grey.shade300, width: 1),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Visibility(
                visible: isSelected,
                child: const Row(
                  children: [
                    Icon(
                      Icons.done_all_outlined,
                      color: Colors.red,
                      size: 20,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                  ],
                ),
              ),
              Text(
                widget.interest,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: isSelected ? Colors.red : Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
