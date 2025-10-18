import 'package:flutter/material.dart';
class RecipeDetailScreen extends StatelessWidget {
  final String recipe;

  RecipeDetailScreen({required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(recipe),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$recipe Details'),
            ElevatedButton(
              onPressed: () {
                // Logic to save recipe
              },
              child: Text('Save Recipe'),
            ),
          ],
        ),
      ),
    );
  }
}
