class Article {
  final int id;
  final String title;
  final String imageUrl;
  final String summary;
  final String newsSite;
  final String publishedAt;

  Article({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.summary,
    required this.newsSite,
    required this.publishedAt,
  });

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      id: json['id'],
      title: json['title'] ?? '',
      imageUrl: json['image_url'] ?? '',
      summary: json['summary'] ?? '',
      newsSite: json['news_site'] ?? '',
      publishedAt: json['published_at'] ?? '',
    );
  }
}