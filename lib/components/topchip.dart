import 'package:flutter/material.dart';

class Topchip extends StatelessWidget {
  const Topchip({super.key, required this.lable, required this.isActive});

  final String lable;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Chip(
        shape: const StadiumBorder(
            side: BorderSide(
          color: Colors.transparent,
        )),
        label: Text(
          lable,
          style: TextStyle(
            color: isActive ? Colors.black : Colors.white,
            fontSize: 16,
          ),
        ),
        backgroundColor: isActive ? Colors.orange[400] : Colors.grey[400],
      ),
    );
  }
}
