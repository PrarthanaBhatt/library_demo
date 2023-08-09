import 'package:flutter/material.dart';

class CustomTabCaseTimeLine extends StatelessWidget {
  final IconData icon;
  final String text;
  final bool isSelected;

  CustomTabCaseTimeLine({
    required this.icon,
    required this.text,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, bottom: 8),
      child: Card(
        color: isSelected ? Colors.black : Colors.white,
        semanticContainer: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        elevation: 2,
        child: Center(
            child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Row(
            children: [
              Icon(
                icon,
                color: isSelected ? Colors.white : Colors.grey,
              ),
              const SizedBox(
                width: 4,
              ),
              Text(
                text,
                style: TextStyle(
                  fontFamily: 'OpenSans',
                  color: isSelected ? Colors.white : Colors.grey,
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
