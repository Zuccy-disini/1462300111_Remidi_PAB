import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/article.dart';

class ApiService {
  static const String baseUrl =
      'https://api.spaceflightnewsapi.net/v4/articles/?limit=20';

  Future<List<Article>> getArticles() async {
    final response = await http.get(
      Uri.parse(baseUrl),
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> data =
          jsonDecode(response.body);

      final List articles = data['results'];

      return articles
          .map((json) => Article.fromJson(json))
          .toList();
    } else {
      throw Exception(
        'Failed to load articles: ${response.statusCode}',
      );
    }
  }
}