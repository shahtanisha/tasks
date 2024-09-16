import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Brands extends StatelessWidget {
  final String brand;
  final String quantity;
  final String newCost;
  final String cost;

  const Brands(
      {super.key,
      required this.brand,
      required this.quantity,
      required this.newCost,
      required this.cost});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            brand,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Change Brand',
                style: TextStyle(
                    fontSize: 13, color: Color.fromARGB(174, 0, 0, 0)),
              ),
              SizedBox(
                height: 25,
                width: 1,
                child: IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.chevron_down,size: 13,color: Color.fromARGB(174, 0, 0, 0)),),
              )
            ],
          ),
          Text(
            'Pack of $quantity',
            style: const TextStyle(fontSize: 14, color: Colors.black45),
          ),
          const SizedBox(height: 3,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '₹$newCost',
                style: const TextStyle(
                    fontSize: 20,
                    color: Colors.green,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                '₹$cost',
                style: const TextStyle(
                  fontSize: 13,
                  color: Colors.black45,
                  decoration: TextDecoration.lineThrough,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}