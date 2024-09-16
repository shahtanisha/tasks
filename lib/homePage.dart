import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newapp/recipes.dart';
import 'package:newapp/components/bottomSheet.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.network(
              'https://elriogrande.net/wp-content/uploads/2021/09/soft-tacos-915X610.jpg'),
          const SizedBox(height: 20),
          MyBottomsheet(),
          ElevatedButton(
              onPressed: () {
                Get.to(() => const Recipes());
              },
            child: const Text('Recipes'))
        ],
      ),
    );
  }
}
