import 'package:flutter/material.dart';
import 'recipe_card.dart';
import 'package:midtermproj/model/List.dart';

class Recipes extends StatefulWidget {
  const Recipes({Key? key}) : super(key: key);

  @override
  _RecipesState createState() => _RecipesState();
}

class _RecipesState extends State<Recipes> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: ListView.builder(
              itemBuilder: (context, i) => RecipeItem(i),
              itemCount: RecipeList.length,
            ),
          ),
        ),
      ),
    );
  }
  }

