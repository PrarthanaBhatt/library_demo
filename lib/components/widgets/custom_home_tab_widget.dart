import 'package:flutter/material.dart';

class CustomHomeTab extends StatelessWidget {
  final String text;
  final bool isSelected;

  CustomHomeTab({
    required this.text,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, bottom: 8),
      child: Container(
        height: 30,
        width: 80,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isSelected ? Colors.blue : Colors.white,
          boxShadow: const [
            BoxShadow(color: Colors.black, blurRadius: 10, spreadRadius: 5)
          ],
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(18),
            topRight: Radius.circular(18),
          ),
        ),
        child: Center(
            child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Text(text),
        )),
      ),
    );
  }
}
