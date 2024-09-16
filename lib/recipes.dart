import 'package:flutter/material.dart';
import 'package:newapp/components/recipesTab.dart';

class Recipes extends StatelessWidget {
  const Recipes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recipes'),
        ),
        body: const Recipestab(),
    );
  }
}