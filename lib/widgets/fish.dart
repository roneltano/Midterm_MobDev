import 'package:flutter/material.dart';

class FishSauce extends StatefulWidget {
  @override
  _FishSauceState createState() => _FishSauceState();
}

class _FishSauceState extends State<FishSauce> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Recipes", style: TextStyle(color: Colors.black)),
        iconTheme: const IconThemeData(color: Colors.black),
        centerTitle: true,
      ),
      body: getBody(),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text('Add to Favorites'),
        backgroundColor: const Color(0xffFE9286),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: <Widget>[
            Container(
                width: double.maxFinite,
                height: 100,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/recipe1.jpg'),
                  ),
                )),
            Container(
              margin: EdgeInsets.only(top: size.height * 0.12),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    const Text(
                      'Fish Steaks With Veggie Sauce',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "Grilled Fish Steak is a delicious Mediterranean recipe made by marinating fish fillets"
                          "in garlic, green chilies and a blend of spices. Tender fish fillets smeared"
                          "in a simple marinade of lime juice and salt, seared golden. Delicious, isn't it?",
                      style: TextStyle(color: Colors.grey,fontSize: 15),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: const [
                        Text(
                          "Ingredients",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Container(
                              width: 150,
                              height: 200,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: const DecorationImage(
                                      image: AssetImage(
                                          "assets/fish.jpg"),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Container(
                              width: 150,
                              height: 200,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: const DecorationImage(
                                      image: AssetImage(
                                          "assets/lemon.jpg"),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Container(
                              width: 150,
                              height: 200,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: const DecorationImage(
                                      image: AssetImage(
                                          "assets/cabbage.jpg"),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Container(
                              width: 150,
                              height: 200,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: const DecorationImage(
                                      image: AssetImage(
                                          "assets/onion.jpg"),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 40),
                    Column(
                        children:const [
                          Text("Directions", textAlign: TextAlign.start,
                            style: TextStyle(color: Colors.black,fontSize: 20),
                          ),
                          SizedBox(height: 40),
                          Text("Step 1 \n\nTo prepare this amazing this non-vegetarian "
                              "recipe, take the fish fillets and massage it gently with oil, "
                              "keep aside in a plate.",
                            style: TextStyle(color: Colors.black,fontSize: 15),
                          ),
                          SizedBox(height: 40),
                          Text("Step 2 \n\nGrind together the garlic, turmeric"
                              "powder, red chili powder, green chilies, dill leaves,"
                              "coriander powder, and salt. Add oil to it and grind to"
                              "form a paste. Rub this all over the fish fillets and keep "
                              "aside to marinate for 15 to 30 minutes.",
                            style: TextStyle(color: Colors.black,fontSize: 15),
                          ),
                          SizedBox(height: 40),
                          Text("Step 3 \n\nGrill the marinated fish on a preheated grill "
                              "or oven till golden and crisp on both sides or for "
                              "5 minutes. Transfer to a plate.",
                            style: TextStyle(color: Colors.black,fontSize: 15),
                          ),
                          SizedBox(height: 100)
                    ]
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
