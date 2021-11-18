import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:midtermproj/model/List.dart';
import 'fish.dart';


class RecipeItem extends StatelessWidget {
  final int index;
  const RecipeItem(this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        color: Colors.amber[100],
        clipBehavior: Clip.antiAlias,
        elevation: 16,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: InkWell(
          onTap: () {
              if (RecipeList[index].title == "Fish Steaks With Veggie Sauce") {
              Navigator.push(
              context, MaterialPageRoute(builder: (context) => FishSauce()));
              }
            },
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Ink.image(
                    height: 200,
                    image: AssetImage(
                      RecipeList[index].imageUrl,
                    ),
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    top: 10,
                    right: 10,
                    child: InkWell(
                      child: RatingBar(
                        initialRating: 0,
                        itemSize: 30,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 1,
                        ratingWidget: RatingWidget(
                          full: const Icon(Icons.favorite, color: Colors.red),
                          half: const Icon(Icons.favorite, color: Colors.red),
                          empty: const Icon(
                            Icons.favorite_border,
                            color: Colors.white,
                          ),
                        ),
                        itemPadding: const EdgeInsets.symmetric(horizontal: 2.0),
                        onRatingUpdate: (rating) {},
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 16, top: 16, right: 16, bottom: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      child: Row(
                        children: <Widget>[
                          const Icon(
                            Icons.schedule,
                            color: Colors.black,
                            size: 18,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            RecipeList[index].duration,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(width: 10),
                          const Icon(
                            Icons.people_outlined,
                            color: Colors.black,
                            size: 18,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            RecipeList[index].serve,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(width: 40),
                          Container(
                            child: RatingBar(
                              initialRating: 3,
                              itemSize: 20,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              ratingWidget: RatingWidget(
                                full: const Icon(Icons.star, color: Colors.red),
                                half:
                                const Icon(Icons.star_half, color: Colors.red),
                                empty: const Icon(Icons.star_border_outlined,
                                    color: Colors.red),
                              ),
                              itemPadding:
                              const EdgeInsets.symmetric(horizontal: 2.0),
                              onRatingUpdate: (rating) {},
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      RecipeList[index].title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      RecipeList[index].description,
                      style: TextStyle(
                          color: Colors.grey)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}