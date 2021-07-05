import 'package:flutter/material.dart';

class RoundContainer extends StatelessWidget {
  final IconData icon;
  final text;
  const RoundContainer({Key? key, required this.icon, this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 75,
      height: 38,
      decoration: BoxDecoration(
          color: Colors.grey, borderRadius: BorderRadius.circular(30)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 23,
          ),
          Text(text, style: TextStyle(color: Colors.white54, fontSize: 14)),
        ],
      ),
    );
  }
}
