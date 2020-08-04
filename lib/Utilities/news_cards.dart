import 'package:flutter/material.dart';

class NewsCards extends StatelessWidget {
  final String articleTitle;
  final String publishedTime;
  final String articleImage;
  final Function onPress;

  NewsCards(
      {this.articleImage, this.articleTitle, this.publishedTime, this.onPress});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.5,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.blue,
          boxShadow: [BoxShadow(color: Colors.black, blurRadius: 5)]),
      child: GestureDetector(
        onTap: onPress,
        child: Column(
          children: <Widget>[
            Image.network(
              articleImage,
              scale: 1,
            ),
            Text(
              articleTitle,
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              publishedTime,
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
