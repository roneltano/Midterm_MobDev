import 'package:flutter/material.dart';
import 'package:midtermproj/widgets/cookie.dart';



class FoodPage extends StatefulWidget {
  FoodPage({Key? key}) : super(key: key);

  @override
  _FoodPageState createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GridView.count(
            crossAxisCount: 2,
            childAspectRatio: (200 / 50),
            crossAxisSpacing: 20,
            mainAxisSpacing: 10,
            children: [
              Container(
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ScreenforCookie()));
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100)),
                  color: Colors.amber[100],
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset(
                        'assets/cookies.png',
                        height: 40.0,
                        width: 40.0,
                      ),
                      const Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Text(
                            "Cookie",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ))
                    ],
                  ),
                ),
              ),
              Container(
                child: FlatButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100)),
                  color: Colors.amber[100],
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset(
                        'assets/burger.png',
                        height: 40.0,
                        width: 40.0,
                      ),
                      const Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Text(
                            "Burger",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ))
                    ],
                  ),
                ),
              ),
              Container(
                child: FlatButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100)),
                  color: Colors.amber[100],
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset(
                        'assets/cake.png',
                        height: 40.0,
                        width: 40.0,
                      ),
                      const Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Text(
                            "Cakes",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ))
                    ],
                  ),
                ),
              ),
              Container(
                child: FlatButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100)),
                  color: Colors.amber[100],
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset(
                        'assets/pizza.png',
                        height: 40.0,
                        width: 40.0,
                      ),
                      const Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Text(
                            "Pizza",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ))
                    ],
                  ),
                ),
              ),
              Container(
                child: FlatButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100)),
                  color: Colors.amber[100],
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset(
                        'assets/hotdog.png',
                        height: 40.0,
                        width: 40.0,
                      ),
                      const Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Text(
                            "Hotdog",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ))
                    ],
                  ),
                ),
              ),
              Container(
                child: FlatButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100)),
                  color: Colors.amber[100],
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset(
                        'assets/fries.png',
                        height: 40.0,
                        width: 40.0,
                      ),
                      const Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Text(
                            "Fries",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ))
                    ],
                  ),
                ),
              ),
              Container(
                child: FlatButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100)),
                  color: Colors.amber[100],
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset(
                        'assets/donut.png',
                        height: 40.0,
                        width: 40.0,
                      ),
                      const Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Text(
                            "Donuts",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
