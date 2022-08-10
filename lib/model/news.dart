class News {
  String author;
  String content;
  String imageUrl;
  String title;
  String date;

  News(
    this.author,
    this.content,
    this.imageUrl,
    this.title,
    this.date,
  );

  factory News.fromMapJson(Map<String, dynamic> jsonMapObject) {
    return News(
      jsonMapObject['author'],
      jsonMapObject['content'],
      jsonMapObject['imageUrl'],
      jsonMapObject['title'],
      jsonMapObject['date'],
    );
  }
}
