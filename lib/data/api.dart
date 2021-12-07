import 'dart:convert';

import 'package:verosa/model/articleModel.dart';
import 'package:http/http.dart' as http;

class ApiLink {
  String part1 = 'https://newsapi.org/';
  String part2 = 'v2/top-headlines?';
  String part3 = 'country=us&category=business&';
  String apiId = 'apiKey=febd9945d43a4a0ba9601f2007860eba';
}

class TopHeadlines {
  /// List declaration to save the fetched data.
 
  static List<ArticleModel> topHeadlines = [];

  static Future<void> getNews() async {
    var url = Uri.parse(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=febd9945d43a4a0ba9601f2007860eba');
    var response = await http.get(url);
    var jsonData = jsonDecode(response.body);

    if (jsonData['status'] == 'ok') {
      for (var v = 0; v < 5; v++) {
        if (jsonData['articles'][v]['urlToImage'] != null &&
            jsonData['articles'][v]['description'] != null) {
          ArticleModel articleModel = ArticleModel(
            author: jsonData['articles'][v]['author'],
            title: jsonData['articles'][v]['title'],
            description: jsonData['articles'][v]['description'],
            url: jsonData['articles'][v]['url'],
            urlToImage: jsonData['articles'][v]['urlToImage'],
            content: jsonData['articles'][v]['content'],
          );
          print('$v Author:' + jsonData['articles'][v]['author']);
          print('$v Title:' + jsonData['articles'][v]['urlToImage']);
          topHeadlines.add(articleModel);
        } else {
          print('urlToImage & description is null.');
        }
      }
    }
  }
}

class categoryTopHeadlines {

  /// List declaration to save the fetched data.
  static List<ArticleModel> general = [];
  static List<ArticleModel> business = [];
  static List<ArticleModel> entertainment = [];
  static List<ArticleModel> health = [];
  static List<ArticleModel> science = [];
  static List<ArticleModel> sports = [];
  static List<ArticleModel> technology = [];

  static Future<void> getNews(String category) async {
    var url = Uri.parse(
        'https://newsapi.org/v2/top-headlines?category=$category&apiKey=febd9945d43a4a0ba9601f2007860eba');
    var response = await http.get(url);
    var jsonData = jsonDecode(response.body);

    if (category == 'general') {
      if (jsonData['status'] == 'ok') {
        for (var v = 0; v < 5; v++) {
          if (jsonData['articles'][v]['urlToImage'] != null &&
              jsonData['articles'][v]['description'] != null) {
            ArticleModel articleModel = ArticleModel(
              author: jsonData['articles'][v]['author'],
              title: jsonData['articles'][v]['title'],
              description: jsonData['articles'][v]['description'],
              url: jsonData['articles'][v]['url'],
              urlToImage: jsonData['articles'][v]['urlToImage'],
              content: jsonData['articles'][v]['content'],
            );
            general.add(articleModel);
          } else {
            print('urlToImage & description is null.');
          }
        }
      }
    }
    else if (category == 'business') {
      if (jsonData['status'] == 'ok') {
        for (var v = 0; v < 5; v++) {
          if (jsonData['articles'][v]['urlToImage'] != null &&
              jsonData['articles'][v]['description'] != null) {
            ArticleModel articleModel = ArticleModel(
              author: jsonData['articles'][v]['author'],
              title: jsonData['articles'][v]['title'],
              description: jsonData['articles'][v]['description'],
              url: jsonData['articles'][v]['url'],
              urlToImage: jsonData['articles'][v]['urlToImage'],
              content: jsonData['articles'][v]['content'],
            );
            business.add(articleModel);
          } else {
            print('urlToImage & description is null.');
          }
        }
      }
    }
    else if (category == 'entertainment') {
      if (jsonData['status'] == 'ok') {
        for (var v = 0; v < 5; v++) {
          if (jsonData['articles'][v]['urlToImage'] != null &&
              jsonData['articles'][v]['description'] != null) {
            ArticleModel articleModel = ArticleModel(
              author: jsonData['articles'][v]['author'],
              title: jsonData['articles'][v]['title'],
              description: jsonData['articles'][v]['description'],
              url: jsonData['articles'][v]['url'],
              urlToImage: jsonData['articles'][v]['urlToImage'],
              content: jsonData['articles'][v]['content'],
            );
            entertainment.add(articleModel);
          } else {
            print('urlToImage & description is null.');
          }
        }
      }
    }
    else if (category == 'health') {
      if (jsonData['status'] == 'ok') {
        for (var v = 0; v < 5; v++) {
          if (jsonData['articles'][v]['urlToImage'] != null &&
              jsonData['articles'][v]['description'] != null) {
            ArticleModel articleModel = ArticleModel(
              author: jsonData['articles'][v]['author'],
              title: jsonData['articles'][v]['title'],
              description: jsonData['articles'][v]['description'],
              url: jsonData['articles'][v]['url'],
              urlToImage: jsonData['articles'][v]['urlToImage'],
              content: jsonData['articles'][v]['content'],
            );
            health.add(articleModel);
          } else {
            print('urlToImage & description is null.');
          }
        }
      }
    }
    else if (category == 'science') {
      if (jsonData['status'] == 'ok') {
        for (var v = 0; v < 5; v++) {
          if (jsonData['articles'][v]['urlToImage'] != null &&
              jsonData['articles'][v]['description'] != null) {
            ArticleModel articleModel = ArticleModel(
              author: jsonData['articles'][v]['author'],
              title: jsonData['articles'][v]['title'],
              description: jsonData['articles'][v]['description'],
              url: jsonData['articles'][v]['url'],
              urlToImage: jsonData['articles'][v]['urlToImage'],
              content: jsonData['articles'][v]['content'],
            );
            science.add(articleModel);
          } else {
            print('urlToImage & description is null.');
          }
        }
      }
    }
    else if (category == 'sports') {
      if (jsonData['status'] == 'ok') {
        for (var v = 0; v < 5; v++) {
          if (jsonData['articles'][v]['urlToImage'] != null &&
              jsonData['articles'][v]['description'] != null) {
            ArticleModel articleModel = ArticleModel(
              author: jsonData['articles'][v]['author'],
              title: jsonData['articles'][v]['title'],
              description: jsonData['articles'][v]['description'],
              url: jsonData['articles'][v]['url'],
              urlToImage: jsonData['articles'][v]['urlToImage'],
              content: jsonData['articles'][v]['content'],
            );
            sports.add(articleModel);
          } else {
            print('urlToImage & description is null.');
          }
        }
      }
    }
    else if (category == 'technology') {
      if (jsonData['status'] == 'ok') {
        for (var v = 0; v < 5; v++) {
          if (jsonData['articles'][v]['urlToImage'] != null &&
              jsonData['articles'][v]['description'] != null) {
            ArticleModel articleModel = ArticleModel(
              author: jsonData['articles'][v]['author'],
              title: jsonData['articles'][v]['title'],
              description: jsonData['articles'][v]['description'],
              url: jsonData['articles'][v]['url'],
              urlToImage: jsonData['articles'][v]['urlToImage'],
              content: jsonData['articles'][v]['content'],
            );
            technology.add(articleModel);
          } else {
            print('urlToImage & description is null.');
          }
        }
      }
    }
    print(general);
    print(entertainment);
  }
}
