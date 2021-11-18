import 'package:flutter/material.dart';
import 'package:midtermproj/widgets/recipe_card.dart';

class RecipeCard {
  final String imageUrl;
  final String duration;
  final String serve;
  final String title;
  final String description;

  RecipeCard({
    required this.imageUrl,
    required this.duration,
    required this.serve,
    required this.title,
    required this.description,
  });
}

final RecipeList = [
  RecipeCard(
    imageUrl: 'assets/recipe1.jpg',
    duration: '45 min',
    serve: '5 serve',
    title: 'Fish Steaks With Veggie Sauce',
    description: 'Boneless with stakes with crispy fried sauce and toppings.',
  ),
  RecipeCard(
    imageUrl: 'assets/recipe2.jpg',
    duration: '40 min',
    serve: '1 serve',
    title: 'Choco Lamb Veggies',
    description: 'Deeply fried lamb meat with choco dips and fresh vegetables.',
  ),
  RecipeCard(
    imageUrl: 'assets/recipe3.jpg',
    duration: '45 min',
    serve: '5 serve',
    title: 'Mutton Kebab Nuggets',
    description: 'Crunchy mutton kebabs with chilli toppings and sauce.',
  ),
  RecipeCard(
    imageUrl: 'assets/recipe4.jpg',
    duration: '25 min',
    serve: '2 serve',
    title: 'Chicken Leg Piece',
    description: 'Crispy chicken leg pieces with side veggies and sauce.',
  ),
  RecipeCard(
    imageUrl: 'assets/recipe5.jpg',
    duration: '15 min',
    serve: '2 serve',
    title: 'Fruit Veggie Mix With Meat',
    description: 'Crunchy deep fried meat mixed with fruits and vegetables.',
  ),
];

class Recipes extends StatelessWidget {
  const Recipes({Key? key}) : super(key: key);

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