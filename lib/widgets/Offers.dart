import 'package:flutter/material.dart';
import '../color_constants.dart';

class Offers extends StatelessWidget {
  final String argument;
  const Offers({
    super.key,
    required this.argument,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            argument,
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700),
          ),
          TextButton(
              onPressed: () {},
              child: Text(
                "See all",
                style: TextStyle(
                    color: purple_color,
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
              ))
        ],
      ),
    );
  }
}