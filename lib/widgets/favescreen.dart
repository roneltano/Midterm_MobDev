import 'package:flutter/material.dart';
import 'package:midtermproj/widgets/recipe.dart';
import 'food.dart';

class FaveScreen extends StatefulWidget {
  const FaveScreen({Key? key}) : super(key: key);
  @override
  _FaveScreenState createState() => _FaveScreenState();
}

class _FaveScreenState extends State<FaveScreen> {
  int _selectedItem = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 0),
            child: DefaultTabController(
                length: 2,
                child: Scaffold(
                  appBar: AppBar(
                    iconTheme: const IconThemeData(
                        color: Colors.white
                    ),
                    backgroundColor: Colors.purple[400],
                    title: Text("Favorites", textAlign: TextAlign.end,),
                    automaticallyImplyLeading: false,
                    foregroundColor: Colors.white,
                    bottom: const TabBar(
                      indicatorColor: Colors.amberAccent,
                      tabs: [
                        Tab(text: 'Food'),
                        Tab(text: 'Recipe'),
                      ],
                    ),
                  ),
                  body: TabBarView(
                    children: [
                      FoodPage(),
                      Recipes(),
                    ],
                  ),
                ),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              _selectedItem = index;
            });
          },
          currentIndex: _selectedItem,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'HOME',
                backgroundColor: Colors.purpleAccent),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'SEARCH',
                backgroundColor: Colors.purpleAccent),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: 'FAVORITES',
                backgroundColor: Colors.purpleAccent),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'PROFILE',
                backgroundColor: Colors.purpleAccent),
          ],
        ),
        floatingActionButtonLocation:
        FloatingActionButtonLocation.miniCenterDocked,
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(8.0),
          child: FloatingActionButton(
            hoverElevation: 10,
            splashColor: Colors.grey,
            tooltip: 'Camera',
            elevation: 4,
            child: Icon(Icons.camera),
            onPressed: () =>
                setState(() {
                  _selectedItem = 2;
                }),
          ),
        )

    );
}
}
