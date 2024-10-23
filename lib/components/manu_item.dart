import 'package:flutter/material.dart';
import 'package:restaurant_booking_ui/screens/manu_details.dart';

class ManuItem extends StatefulWidget {
  const ManuItem({
    super.key,
    required this.title,
    required this.subTitle,
    required this.url,
    required this.rating,
  });

  final String title;
  final String subTitle;
  final String url;
  final double rating;

  @override
  State<ManuItem> createState() => _ManuItemState();
}

class _ManuItemState extends State<ManuItem> {
  late double rating;

  @override
  void initState() {
    super.initState();
    rating = widget.rating;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ManuDetailsScreen(
                    url: widget.url,
                    title: widget.title,
                    subTitle: widget.subTitle,
                    rating: widget.rating,
                  ),
                ),
              );
            },
            child: Hero(
              // Use a unique tag for each item based on the title or URL.
              tag: widget.url + widget.title,
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(widget.url),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(10),
                    topLeft: Radius.circular(10),
                  ),
                ),
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 1.0,
                  blurRadius: 4.0,
                ),
              ],
            ),
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      widget.subTitle,
                      style: TextStyle(fontSize: 12, color: Colors.grey[800]),
                    ),
                  ],
                ),
                CircleAvatar(
                  backgroundColor: Colors.orange,
                  child: Text(
                    rating.toStringAsFixed(1),
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
