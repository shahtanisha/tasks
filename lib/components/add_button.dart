import 'package:flutter/material.dart';

class AddButton extends StatefulWidget {
  const AddButton({super.key});

  @override
  State<AddButton> createState() => _AddButtonState();
}

class _AddButtonState extends State<AddButton> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return count == 0
        ? ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 17),
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(8), 
                side: const BorderSide(
                    color: Colors.green, width: 2),
              ),
              elevation: 0, 
            ),
            onPressed: () {
              setState(() {
                count = 1;
              });
            },
            child: const Text('Add',style: TextStyle(fontSize: 18,color: Colors.green),),
          )
        : Container(
            padding: const EdgeInsets.all(8),
            width: 67,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: () {
                      setState(() {
                        if (count > 1) {
                          count--;
                        } else {
                          count = 0;
                        }
                      });
                    },
                    child: const Icon(
                      Icons.remove,
                      color: Colors.white,
                      size: 20,
                    )),
                Text(
                  '$count',
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
                GestureDetector(
                    onTap: () {
                      setState(() {
                        count++;
                      });
                    },
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 20,
                    )),
              ],
            ),
          );
  }
}
