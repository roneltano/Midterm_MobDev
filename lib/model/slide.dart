class Slide {
  final String imgurl;
  final String title;
  final String description;

  Slide({
    required this.imgurl,
    required this.title,
    required this.description,
  });
}

final slideList = [
  Slide(
      imgurl: 'assets/eathealthy.png',
      title: 'Eat Healthy',
      description:
      'Maintaining good Health should be the primary focus of everyone.'),
  Slide(
      imgurl: 'assets/recipes.png',
      title: 'Healthy Recipes',
      description:
      'Browse thousands of healthy recipes from all over the world.'),
  Slide(
      imgurl: 'assets/life.png',
      title: 'Track your Health',
      description: 'With amazing inbuilt tools you can track your progress.'),
];
