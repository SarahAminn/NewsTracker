import 'package:flutter/material.dart';
import 'package:news_app/Utilities/countryCards.dart';

import 'file:///D:/a.b.k/work/programing/projects/flutterapp/flutter_app/News-APP/lib/Backend/networking.dart';
import 'file:///D:/a.b.k/work/programing/projects/flutterapp/flutter_app/News-APP/lib/Screens/details_page.dart';
import 'file:///D:/a.b.k/work/programing/projects/flutterapp/flutter_app/News-APP/lib/Utilities/news_cards.dart';

import '../Utilities/category_card.dart';
import '../Utilities/constants.dart';

enum Categories {
  general,
  business,
  entertainment,
  health,
  science,
  sports,
  technology,
}
enum Countries { USA, Egypt, Germany }

class NewsPage extends StatefulWidget {
  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  Color generalCardColor = kActiveColor;
  Color businessCardColor = kInactiveColor;
  Color entertainmentCardColor = kInactiveColor;
  Color healthCardColor = kInactiveColor;
  Color scienceCardColor = kInactiveColor;
  Color sportsCardColor = kInactiveColor;
  Color technologyCardColor = kInactiveColor;
  Color usaCardColor = kInactiveColor;
  Color egyptCardColor = kActiveColor;
  Color germanyCardColor = kInactiveColor;

  Countries country = Countries.Egypt;
  Categories selectedCategory = Categories.general;

  changeNewsFromCards(Countries country, Categories category) {
    if (category == Categories.general && country == Countries.Egypt) {
      stream = Stream.fromFuture(NetworkHelper(
              'https://newsapi.org/v2/top-headlines?country=eg&category=general&apiKey=$apiKey')
          .getData());
    }
    if (category == Categories.business && country == Countries.Egypt) {
      stream = Stream.fromFuture(NetworkHelper(
              'https://newsapi.org/v2/top-headlines?country=eg&category=business&apiKey=$apiKey')
          .getData());
    }
    if (category == Categories.entertainment && country == Countries.Egypt) {
      stream = Stream.fromFuture(NetworkHelper(
              'https://newsapi.org/v2/top-headlines?country=eg&category=entertainment&apiKey=$apiKey')
          .getData());
    }
    if (category == Categories.health && country == Countries.Egypt) {
      stream = Stream.fromFuture(NetworkHelper(
              'https://newsapi.org/v2/top-headlines?country=eg&category=health&apiKey=$apiKey')
          .getData());
    }
    if (category == Categories.science && country == Countries.Egypt) {
      stream = Stream.fromFuture(
        NetworkHelper(
                'https://newsapi.org/v2/top-headlines?country=eg&category=science&apiKey=$apiKey')
            .getData(),
      );
    }
    if (category == Categories.sports && country == Countries.Egypt) {
      stream = Stream.fromFuture(
        NetworkHelper(
                'https://newsapi.org/v2/top-headlines?country=eg&category=sports&apiKey=$apiKey')
            .getData(),
      );
    }
    if (category == Categories.technology && country == Countries.Egypt) {
      stream = Stream.fromFuture(
        NetworkHelper(
                'https://newsapi.org/v2/top-headlines?country=eg&category=technology&apiKey=$apiKey')
            .getData(),
      );
    }
    if (category == Categories.general && country == Countries.USA) {
      stream = Stream.fromFuture(NetworkHelper(
              'https://newsapi.org/v2/top-headlines?country=us&category=general&apiKey=$apiKey')
          .getData());
    }
    if (category == Categories.business && country == Countries.USA) {
      stream = Stream.fromFuture(NetworkHelper(
              'https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=$apiKey')
          .getData());
    }
    if (category == Categories.entertainment && country == Countries.USA) {
      stream = Stream.fromFuture(NetworkHelper(
              'https://newsapi.org/v2/top-headlines?country=us&category=entertainment&apiKey=$apiKey')
          .getData());
    }
    if (category == Categories.health && country == Countries.USA) {
      stream = Stream.fromFuture(NetworkHelper(
              'https://newsapi.org/v2/top-headlines?country=us&category=health&apiKey=$apiKey')
          .getData());
    }
    if (category == Categories.science && country == Countries.USA) {
      stream = Stream.fromFuture(NetworkHelper(
              'https://newsapi.org/v2/top-headlines?country=us&category=science&apiKey=$apiKey')
          .getData());
    }
    if (category == Categories.sports && country == Countries.USA) {
      stream = Stream.fromFuture(NetworkHelper(
              'https://newsapi.org/v2/top-headlines?country=us&category=sports&apiKey=$apiKey')
          .getData());
    }
    if (category == Categories.technology && country == Countries.USA) {
      stream = Stream.fromFuture(NetworkHelper(
              'https://newsapi.org/v2/top-headlines?country=us&category=technology&apiKey=$apiKey')
          .getData());
    }
    if (category == Categories.general && country == Countries.Germany) {
      stream = Stream.fromFuture(NetworkHelper(
              'https://newsapi.org/v2/top-headlines?country=de&category=general&apiKey=$apiKey')
          .getData());
    }
    if (category == Categories.business && country == Countries.Germany) {
      stream = Stream.fromFuture(NetworkHelper(
              'https://newsapi.org/v2/top-headlines?country=de&category=business&apiKey=$apiKey')
          .getData());
    }
    if (category == Categories.entertainment && country == Countries.Germany) {
      stream = Stream.fromFuture(NetworkHelper(
              'https://newsapi.org/v2/top-headlines?country=de&category=entertainment&apiKey=$apiKey')
          .getData());
    }
    if (category == Categories.health && country == Countries.Germany) {
      stream = Stream.fromFuture(NetworkHelper(
              'https://newsapi.org/v2/top-headlines?country=de&category=health&apiKey=$apiKey')
          .getData());
    }
    if (category == Categories.science && country == Countries.Germany) {
      stream = Stream.fromFuture(NetworkHelper(
              'https://newsapi.org/v2/top-headlines?country=de&category=science&apiKey=$apiKey')
          .getData());
    }
    if (category == Categories.sports && country == Countries.Germany) {
      stream = Stream.fromFuture(NetworkHelper(
              'https://newsapi.org/v2/top-headlines?country=de&category=sports&apiKey=$apiKey')
          .getData());
    }
    if (category == Categories.technology && country == Countries.Germany) {
      stream = Stream.fromFuture(NetworkHelper(
              'https://newsapi.org/v2/top-headlines?country=de&category=technology&apiKey=$apiKey')
          .getData());
    }
  }

  Stream stream = Stream.fromFuture(
    NetworkHelper(
            'https://newsapi.org/v2/top-headlines?country=eg&category=general&apiKey=$apiKey')
        .getData(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'News APP',
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 15.0, top: 15.0, bottom: 5.0),
              child: Text(
                'Countries',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF072B39),
                ),
              ),
            ),
            //TODO countries cards
            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CountryCard(
                      categoryColor: country == Countries.Egypt
                          ? kActiveColor
                          : kInactiveColor, //Color of the card
                      categoryName: 'Egypt',
                      onPress: () {
                        setState(() {
                          country = Countries.Egypt;
                          changeNewsFromCards(country, selectedCategory);
                        });
                      }, // function which work when the card is pressed
                      categoryTextColor: country == Countries.Egypt
                          ? kInactiveColor
                          : kActiveColor, //color of the text in the card
                    ),
                    CountryCard(
                      categoryColor: country == Countries.USA
                          ? kActiveColor
                          : kInactiveColor,
                      categoryName: 'USA',
                      onPress: () {
                        setState(() {
                          country = Countries.USA;
                          changeNewsFromCards(country, selectedCategory);
                        });
                      },
                      categoryTextColor: country == Countries.USA
                          ? kInactiveColor
                          : kActiveColor,
                    ),
                    CountryCard(
                      categoryColor: country == Countries.Germany
                          ? kActiveColor
                          : kInactiveColor,
                      categoryName: 'Germany',
                      onPress: () {
                        setState(() {
                          country = Countries.Germany;
                          changeNewsFromCards(country, selectedCategory);
                        });
                      },
                      categoryTextColor: country == Countries.Germany
                          ? kInactiveColor
                          : kActiveColor,
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 15.0, top: 15.0, bottom: 5.0),
              child: Text(
                'Categories',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF072B39),
                ),
              ),
            ),
            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CategoryCard(
                      onPress: () {
                        setState(() {
                          selectedCategory = Categories.general;
                          changeNewsFromCards(country, selectedCategory);
                        });
                      },
                      categoryColor: selectedCategory == Categories.general
                          ? kActiveColor
                          : kInactiveColor,
                      categoryName: 'general',
                      categoryTextColor: selectedCategory == Categories.general
                          ? kInactiveColor
                          : kActiveColor,
                    ),
                    CategoryCard(
                      onPress: () {
                        setState(() {
                          selectedCategory = Categories.business;
                          changeNewsFromCards(country, selectedCategory);
                        });
                      },
                      categoryColor: selectedCategory == Categories.business
                          ? kActiveColor
                          : kInactiveColor,
                      categoryName: 'business',
                      categoryTextColor: selectedCategory == Categories.business
                          ? kInactiveColor
                          : kActiveColor,
                    ),
                    CategoryCard(
                      onPress: () {
                        setState(() {
                          selectedCategory = Categories.entertainment;
                          changeNewsFromCards(country, selectedCategory);
                        });
                      },
                      categoryColor:
                          selectedCategory == Categories.entertainment
                              ? kActiveColor
                              : kInactiveColor,
                      categoryName: 'entertainment',
                      categoryTextColor:
                          selectedCategory == Categories.entertainment
                              ? kInactiveColor
                              : kActiveColor,
                    ),
                    CategoryCard(
                      onPress: () {
                        setState(() {
                          selectedCategory = Categories.health;
                          changeNewsFromCards(country, selectedCategory);
                        });
                      },
                      categoryColor: selectedCategory == Categories.health
                          ? kActiveColor
                          : kInactiveColor,
                      categoryName: 'health',
                      categoryTextColor: selectedCategory == Categories.health
                          ? kInactiveColor
                          : kActiveColor,
                    ),
                    CategoryCard(
                      onPress: () {
                        setState(() {
                          selectedCategory = Categories.science;
                          changeNewsFromCards(country, selectedCategory);
                        });
                      },
                      categoryColor: selectedCategory == Categories.science
                          ? kActiveColor
                          : kInactiveColor,
                      categoryName: 'science',
                      categoryTextColor: selectedCategory == Categories.science
                          ? kInactiveColor
                          : kActiveColor,
                    ),
                    CategoryCard(
                      onPress: () {
                        setState(() {
                          selectedCategory = Categories.sports;
                          changeNewsFromCards(country, selectedCategory);
                        });
                      },
                      categoryColor: selectedCategory == Categories.sports
                          ? kActiveColor
                          : kInactiveColor,
                      categoryName: 'sports',
                      categoryTextColor: selectedCategory == Categories.sports
                          ? kInactiveColor
                          : kActiveColor,
                    ),
                    CategoryCard(
                      onPress: () {
                        setState(() {
                          selectedCategory = Categories.technology;
                          changeNewsFromCards(country, selectedCategory);
                        });
                      },
                      categoryColor: selectedCategory == Categories.technology
                          ? kActiveColor
                          : kInactiveColor,
                      categoryName: 'technology',
                      categoryTextColor:
                          selectedCategory == Categories.technology
                              ? kInactiveColor
                              : kActiveColor,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 15.0, bottom: 5.0),
              child: Text(
                'News',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF072B39),
                ),
              ),
            ),
            StreamBuilder(
              stream: stream,
              builder: (context, snapshot) {
                List<Widget> list = [];
                if (snapshot == null ||
                    !snapshot.hasData ||
                    snapshot.connectionState == ConnectionState.none) {
                  return Container(
                    child: CircularProgressIndicator(),
                  );
                } else {
                  for (var article in snapshot.data["articles"]) {
                    var title = article['title'].toString();
                    var image = article['urlToImage'].toString();
                    var publishedTime = article["publishedAt"].toString();
                    var description = article["description"].toString();
                    var content = article["content"].toString();

                    list.add(Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: NewsCards(
                        articleImage: image,
                        articleTitle: title,
                        publishedTime: publishedTime,
                        onPress: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return NewsDetailsScreen(
                                descriptions: description,
                                title: title,
                                imgUrl: image,
                                content: content == null ? "" : content,
                                publishedAt: publishedTime,
                              );
                            }),
                          );
                        },
                      ),
                    ));
                  }
                  return Column(
                    children: list,
                  );
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
