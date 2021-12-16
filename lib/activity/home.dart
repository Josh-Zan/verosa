import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:verosa/component/article.dart';
import 'package:verosa/component/category.dart';
import 'package:verosa/component/drawer.dart';
import 'package:verosa/data/api.dart';
import 'package:verosa/data/categoryData.dart';
import 'package:verosa/model/categoryModel.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<CategoryModel> categories = <CategoryModel>[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    categories = getCategories();
    TopHeadlines.getNews();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(),
      appBar: AppBar(
        title: Text(
          'VEROSA',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black,),
      ),
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            physics: ScrollPhysics(),
            child: Container(
              padding: EdgeInsets.only(top: 10, bottom: 0, left: 10, right: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 70,
                  ),
                  Text(
                    'Top News',
                    style: GoogleFonts.poppins(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      padding: EdgeInsets.only(top: 10),
                      itemCount: TopHeadlines.topHeadlines.length,
                      itemBuilder: (context, index) {
                        return Article(
                          title: TopHeadlines.topHeadlines[index].title,
                          description:
                              TopHeadlines.topHeadlines[index].description,
                          url: TopHeadlines.topHeadlines[index].url,
                          urlToImage:
                              TopHeadlines.topHeadlines[index].urlToImage,
                        );
                      }),
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white38,
            ),
            height: 70,
            padding: EdgeInsets.only(top: 10, left: 10, bottom: 10),
            child: ListView.builder(
                itemCount: categories.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Category(
                      imageUrl: categories[index].imageUrl,
                      categoryName: categories[index].categoryName);
                }),
          ),
        ],
      ),
    );
  }
}
