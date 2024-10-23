import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  const Avatar({super.key, required this.leftPosition, required this.url});

  final double leftPosition;
  final String url;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.37,
      left: leftPosition,
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(url),
            ),
            borderRadius: BorderRadius.circular(50),
            border: Border.all(
              width: 1,
              color: Colors.white,
            )),
      ),
    );
  }
}
