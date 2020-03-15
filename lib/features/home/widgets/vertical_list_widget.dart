import 'package:ebook_app/features/movie_detail/movie_detail_page.dart';
import 'package:flutter/material.dart';

class VerticalListWidget extends StatelessWidget {
  const VerticalListWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Stack(
        children: <Widget>[
          ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MovieDetailPage(),
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 100,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              'assets/images/film_banner.png',
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'The Jungle Book',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              'The Jungle Book',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  '\$ 19.99',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                    Text(
                                      '4.0',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Text(
                                      '(00)',
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.6,
              height: 50,
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.35,
              ),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.4),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(
                      Icons.image,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.image,
                      color: Colors.grey,
                    ),
                    Icon(
                      Icons.image,
                      color: Colors.grey,
                    ),
                    CircleAvatar(
                      radius: 10,
                      backgroundImage:
                          AssetImage('assets/images/film_banner.png'),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
