import 'dart:convert';

import 'package:verosa/model/articleModel.dart';
import 'package:http/http.dart' as http;

class TopHeadlines {
  /// List declaration to save the fetched data.
  static List<ArticleModel> topHeadlines = [];

  static Future<void> getNews() async {
    var url = Uri.parse(
        'https://newsapi.org/v2/top-headlines?country=us&language=en&apiKey=5d25ad6a1e86493c800f44c5a9f0ad0b');
    var response = await http.get(url);
    var jsonData = jsonDecode(response.body);

    if (jsonData['status'] == 'ok') {
      jsonData['articles'].forEach((element){
        if (element['url'] != null &&
            element['urlToImage'] != null &&
            element['author'] != null &&
            element['title'] != null &&
            element['description'] != null &&
            element['content'] != null) {
          ArticleModel articleModel = ArticleModel(
            author: element['author'],
            title: element['title'],
            description: element['description'],
            url: element['url'],
            urlToImage: element['urlToImage'],
            content: element['content'],
          );
          topHeadlines.add(articleModel);
        }
      });
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
        'https://newsapi.org/v2/top-headlines?category=$category&language=en&apiKey=5d25ad6a1e86493c800f44c5a9f0ad0b');
    var response = await http.get(url);
    var jsonData = jsonDecode(response.body);

    try {
      if (category == 'general') {
        if (jsonData['status'] == 'ok') {
          jsonData['articles'].forEach((element){
            if (element['url'] != null &&
                element['urlToImage'] != null &&
                element['author'] != null &&
                element['title'] != null &&
                element['description'] != null &&
                element['content'] != null) {
              ArticleModel articleModel = ArticleModel(
                author: element['author'],
                title: element['title'],
                description: element['description'],
                url: element['url'],
                urlToImage: element['urlToImage'],
                content: element['content'],
              );
              general.add(articleModel);
            }
          });
        }
      }
      else if (category == 'business') {
        if (jsonData['status'] == 'ok') {
          jsonData['articles'].forEach((element){
            if (element['url'] != null &&
                element['urlToImage'] != null &&
                element['author'] != null &&
                element['title'] != null &&
                element['description'] != null &&
                element['content'] != null) {
              ArticleModel articleModel = ArticleModel(
                author: element['author'],
                title: element['title'],
                description: element['description'],
                url: element['url'],
                urlToImage: element['urlToImage'],
                content: element['content'],
              );
              business.add(articleModel);
            }
          });
        }
      }
      else if (category == 'entertainment') {
        if (jsonData['status'] == 'ok') {
          jsonData['articles'].forEach((element){
            if (element['url'] != null &&
                element['urlToImage'] != null &&
                element['author'] != null &&
                element['title'] != null &&
                element['description'] != null &&
                element['content'] != null) {
              ArticleModel articleModel = ArticleModel(
                author: element['author'],
                title: element['title'],
                description: element['description'],
                url: element['url'],
                urlToImage: element['urlToImage'],
                content: element['content'],
              );
              entertainment.add(articleModel);
            }
          });
        }
      }
      else if (category == 'health') {
        if (jsonData['status'] == 'ok') {
          jsonData['articles'].forEach((element){
            if (element['url'] != null &&
                element['urlToImage'] != null &&
                element['author'] != null &&
                element['title'] != null &&
                element['description'] != null &&
                element['content'] != null) {
              ArticleModel articleModel = ArticleModel(
                author: element['author'],
                title: element['title'],
                description: element['description'],
                url: element['url'],
                urlToImage: element['urlToImage'],
                content: element['content'],
              );
              health.add(articleModel);
            }
          });
        }
      }
      else if (category == 'science') {
        if (jsonData['status'] == 'ok') {
          jsonData['articles'].forEach((element){
            if (element['url'] != null &&
                element['urlToImage'] != null &&
                element['author'] != null &&
                element['title'] != null &&
                element['description'] != null &&
                element['content'] != null) {
              ArticleModel articleModel = ArticleModel(
                author: element['author'],
                title: element['title'],
                description: element['description'],
                url: element['url'],
                urlToImage: element['urlToImage'],
                content: element['content'],
              );
              science.add(articleModel);
            }
          });
        }
      }
      else if (category == 'sports') {
        if (jsonData['status'] == 'ok') {
          jsonData['articles'].forEach((element){
            if (element['url'] != null &&
                element['urlToImage'] != null &&
                element['author'] != null &&
                element['title'] != null &&
                element['description'] != null &&
                element['content'] != null) {
              ArticleModel articleModel = ArticleModel(
                author: element['author'],
                title: element['title'],
                description: element['description'],
                url: element['url'],
                urlToImage: element['urlToImage'],
                content: element['content'],
              );
              sports.add(articleModel);
            }
          });
        }
      }
      else if (category == 'technology') {
        if (jsonData['status'] == 'ok') {
          jsonData['articles'].forEach((element){
            if (element['url'] != null &&
                element['urlToImage'] != null &&
                element['author'] != null &&
                element['title'] != null &&
                element['description'] != null &&
                element['content'] != null) {
              ArticleModel articleModel = ArticleModel(
                author: element['author'],
                title: element['title'],
                description: element['description'],
                url: element['url'],
                urlToImage: element['urlToImage'],
                content: element['content'],
              );
              technology.add(articleModel);
            }
          });
        }
      }
    }catch(e){
      print('Error: ' + e.toString());
    }
  }
}
