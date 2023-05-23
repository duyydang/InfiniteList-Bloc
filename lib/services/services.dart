import 'dart:convert';

import 'package:test_bloc/models/comment.dart';
import 'package:http/http.dart' as http;

Future<List<Comment>> getCommentsFromApi() async {
  const url = "https://jsonplaceholder.typicode.com/comments";
  final http.Client httpClient = http.Client();
  try {
    final response = await httpClient.get(url);
    if ((response.statusCode) == 200) {
      final responseData = json.decode(response.body) as List;
      final List<Comment> comments = responseData.map((comment) {
        return Comment(
          id: comment['id'],
          name: comment['name'],
          email: comment['email'],
          body: comment['body'],
        );
      }).toList();
      print('breakpoint');
      return comments;
    }
  } catch (ex) {}
  return <Comment>[];
}
