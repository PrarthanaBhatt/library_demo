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
      padding: const EdgeInsets.only(top: 20.0, bottom: 2),
      child: Container(
        height: 30,
        width: 80,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isSelected ? Colors.blue.shade800 : Colors.white,
          boxShadow: const [
            BoxShadow(color: Colors.black, blurRadius: 10, spreadRadius: 1)
          ],
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
        ),
        child: Center(
            child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Text(
            text,
            style: TextStyle(color: isSelected ? Colors.white : Colors.grey),
          ),
        )),
      ),
    );
  }
}
