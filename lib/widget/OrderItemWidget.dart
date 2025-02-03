import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderItemWidget extends StatelessWidget {
  final String title;
  final String quantity;
  final String? note;
  final String? extra;
  final bool isHighlighted;
  final bool isChecked;
  final ValueChanged onChanged;

  const OrderItemWidget({
    required this.title,
    required this.quantity,
    this.note,
    this.extra,
    this.isHighlighted = false,
    required this.isChecked,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Checkbox(
            value: isChecked,
            onChanged: onChanged,
            activeColor: Colors.red,
            shape: const CircleBorder(),
            side: BorderSide(color: isHighlighted ? Colors.red : Colors.grey, width: 2),
          ),
          const SizedBox(width: 8),


          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: isHighlighted ? FontWeight.bold : FontWeight.w500,
                  ),
                ),
                if (extra != null)
                  Text("Extra: $extra",
                      style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                if (note != null)
                  Text("Note: $note", style: const TextStyle(fontSize: 14, color: Colors.grey)),
              ],
            ),
          ),

          // Quantity
          Text(
            quantity,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}