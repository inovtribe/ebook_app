import 'package:ebook_app/features/movie_detail/movie_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:snaplist/snaplist.dart';

class HorizontalListWidget extends StatelessWidget {
  const HorizontalListWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: SnapList(
          count: 10,
          sizeProvider: (index, data) => data.next == index || index == 0
              ? Size(110.0, 140.0)
              : Size(90.0, 110.0),
          separatorProvider: (index, data) => Size(10.0, 10.0),
          builder: (context, index, data) {
            return InkWell(
              borderRadius: BorderRadius.circular(10),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MovieDetailPage(),
                  ),
                );
              },
              child: Container(
                margin: EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.red,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/film_banner.png'),
                  ),
                ),
                child: Stack(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.bottomRight,
                      margin: EdgeInsets.only(
                        right: 10,
                        bottom: 10,
                      ),
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.grey.withOpacity(0.4),
                        child: Icon(
                          Icons.play_arrow,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
