import "package:flutter/material.dart";

class coffee_type extends StatelessWidget {
  final String coffeetype;

  final bool isSelected;
  final VoidCallback onTap;
  const coffee_type(
      {required this.coffeetype,
      required this.isSelected,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 25),
        child: Text(
          coffeetype,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: isSelected ? Colors.orange : Colors.white),
        ),
      ),
    );
  }
}
