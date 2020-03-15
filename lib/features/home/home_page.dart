import 'package:ebook_app/features/home/widgets/app_bar_widget.dart';
import 'package:ebook_app/features/home/widgets/horizontal_list_widget.dart';
import 'package:ebook_app/features/home/widgets/vertical_list_widget.dart';
import 'package:ebook_app/shared/app_colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: PreferredSize(
        child: AppBarWidget(),
        preferredSize: Size(
          MediaQuery.of(context).size.width,
          MediaQuery.of(context).size.height * 0.1,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          HorizontalListWidget(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Text(
              'Best Seller',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          VerticalListWidget()
        ],
      ),
    );
  }
}
