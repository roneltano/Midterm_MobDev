import 'package:flutter/material.dart';
import '../model/slide.dart';


class SlideItems extends StatelessWidget {
  final int index;
   SlideItems(this.index);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 250,
          height: 250,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(slideList[index].imgurl),
                fit: BoxFit.fill,
            ),
          ),
        ),
        SizedBox(height:20),
        Text(slideList[index].title, style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold)),
        SizedBox(height:20),
        Text(slideList[index].description, textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey[700]),),
      ],
    );
  }
}
