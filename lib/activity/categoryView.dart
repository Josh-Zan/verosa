import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:verosa/component/article.dart';
import 'package:verosa/data/api.dart';

class CategoryNews extends StatefulWidget {
  final String categoryName;

  CategoryNews({
    required this.categoryName,
  });

  @override
  State<CategoryNews> createState() => _CategoryNewsState();
}

class _CategoryNewsState extends State<CategoryNews> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    categoryTopHeadlines.getNews(widget.categoryName.toLowerCase());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Container(
          padding: EdgeInsets.only(top: 70, bottom: 0, left: 10, right: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                widget.categoryName,
                style: GoogleFonts.poppins(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              ),
              widget.categoryName.toLowerCase() == 'general'
                  ? ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: categoryTopHeadlines.general.length,
                      itemBuilder: (context, index) {
                        return Article(
                          title: categoryTopHeadlines.general[index].title,
                          description:
                              categoryTopHeadlines.general[index].description,
                          url: categoryTopHeadlines.general[index].url,
                          urlToImage:
                              categoryTopHeadlines.general[index].urlToImage,
                        );
                      })
                  : (widget.categoryName.toLowerCase() == 'business'
                      ? ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: categoryTopHeadlines.business.length,
                          itemBuilder: (context, index) {
                            return Article(
                              title: categoryTopHeadlines.business[index].title,
                              description: categoryTopHeadlines
                                  .business[index].description,
                              url: categoryTopHeadlines.business[index].url,
                              urlToImage: categoryTopHeadlines
                                  .business[index].urlToImage,
                            );
                          })
                      : (widget.categoryName.toLowerCase() == 'entertainment'
                          ? ListView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount:
                                  categoryTopHeadlines.entertainment.length,
                              itemBuilder: (context, index) {
                                return Article(
                                  title: categoryTopHeadlines
                                      .entertainment[index].title,
                                  description: categoryTopHeadlines
                                      .entertainment[index].description,
                                  url: categoryTopHeadlines
                                      .entertainment[index].url,
                                  urlToImage: categoryTopHeadlines
                                      .entertainment[index].urlToImage,
                                );
                              })
                          : (widget.categoryName.toLowerCase() == 'health'
                              ? ListView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: categoryTopHeadlines.health.length,
                                  itemBuilder: (context, index) {
                                    return Article(
                                      title: categoryTopHeadlines
                                          .health[index].title,
                                      description: categoryTopHeadlines
                                          .health[index].description,
                                      url: categoryTopHeadlines
                                          .health[index].url,
                                      urlToImage: categoryTopHeadlines
                                          .health[index].urlToImage,
                                    );
                                  })
                              : (widget.categoryName.toLowerCase() == 'science'
                                  ? ListView.builder(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      itemCount:
                                          categoryTopHeadlines.science.length,
                                      itemBuilder: (context, index) {
                                        return Article(
                                          title: categoryTopHeadlines
                                              .science[index].title,
                                          description: categoryTopHeadlines
                                              .science[index].description,
                                          url: categoryTopHeadlines
                                              .science[index].url,
                                          urlToImage: categoryTopHeadlines
                                              .science[index].urlToImage,
                                        );
                                      })
                                  : (widget.categoryName.toLowerCase() ==
                                          'sports'
                                      ? ListView.builder(
                                          physics:
                                              NeverScrollableScrollPhysics(),
                                          shrinkWrap: true,
                                          itemCount: categoryTopHeadlines
                                              .sports.length,
                                          itemBuilder: (context, index) {
                                            return Article(
                                              title: categoryTopHeadlines
                                                  .sports[index].title,
                                              description: categoryTopHeadlines
                                                  .sports[index].description,
                                              url: categoryTopHeadlines
                                                  .sports[index].url,
                                              urlToImage: categoryTopHeadlines
                                                  .sports[index].urlToImage,
                                            );
                                          })
                                      : (widget.categoryName.toLowerCase() ==
                                              'technology'
                                          ? ListView.builder(
                                              physics:
                                                  NeverScrollableScrollPhysics(),
                                              shrinkWrap: true,
                                              itemCount: categoryTopHeadlines
                                                  .technology.length,
                                              itemBuilder: (context, index) {
                                                return Article(
                                                  title: categoryTopHeadlines
                                                      .technology[index].title,
                                                  description:
                                                      categoryTopHeadlines
                                                          .technology[index]
                                                          .description,
                                                  url: categoryTopHeadlines
                                                      .technology[index].url,
                                                  urlToImage:
                                                      categoryTopHeadlines
                                                          .technology[index]
                                                          .urlToImage,
                                                );
                                              })
                                          : Container(
                                              child: Text('No news'),
                                            ))))))),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(
          Icons.navigate_before,
          size: 40,
        ),
        backgroundColor: Colors.black54,
        foregroundColor: Colors.white,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartTop,
    );
  }
}
