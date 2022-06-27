// import '../model/post.dart';
// import 'package:http/http.dart' as http;

//   Future<List<Post>?> getPost() async {
//     var client = http.Client();

//     var uri = Uri.parse('https://jsonplaceholder.typicode.com/posts');
//     var response = await client.get(uri);
//     if (response.statusCode == 200) {
//       var json = response.body;
//       return postFromJson(json);
//     }
//   }
// }

//............
import 'dart:convert';
import 'package:http/http.dart' as http;

import '../model/post.dart';

const baseUrl = 'https://inshorts.deta.dev/news?category=sports';
const baseUrl1 = 'https://inshorts.deta.dev/news?category=science';
const baseUrl2 = 'https://inshorts.deta.dev/news?category=business';
const baseUrl3 = 'https://inshorts.deta.dev/news?category=health';
const baseUrl4 = 'https://inshorts.deta.dev/news?category=movies';


// class MyApiClient {
// MyApiClient(this.httpClient);
class RemoteService {
  Future<List<Datum>?> getData() async {
    final httpClient = http.Client();
    // try {
    var response = await httpClient.get(Uri.parse(baseUrl));
    if (response.statusCode == 200) {
      var jsonResponse = json.decode(response.body);
      Post posts = Post?.fromJson(jsonResponse);
      Iterable dataResponse = posts.data;
      List<Datum> dataList = posts.data.toList();
      return dataList;
    } else
      print("Error");
  }

  Future<List<Datum>?> getData1() async {
    final httpClient = http.Client();
    // try {
    var response = await httpClient.get(Uri.parse(baseUrl1));
    if (response.statusCode == 200) {
      var jsonResponse = json.decode(response.body);
      Post posts = Post?.fromJson(jsonResponse);
      Iterable dataResponse = posts.data;
      List<Datum> dataList = posts.data.toList();
      return dataList;
    } else
      print("Error");
  }

  Future<List<Datum>?> getData2() async {
    final httpClient = http.Client();
    // try {
    var response = await httpClient.get(Uri.parse(baseUrl2));
    if (response.statusCode == 200) {
      var jsonResponse = json.decode(response.body);
      Post posts = Post?.fromJson(jsonResponse);
      Iterable dataResponse = posts.data;
      List<Datum> dataList = posts.data.toList();
      return dataList;
    } else
      print("Error");
  }
  Future<List<Datum>?> getData3() async {
    final httpClient = http.Client();
    // try {
    var response = await httpClient.get(Uri.parse(baseUrl3));
    if (response.statusCode == 200) {
      var jsonResponse = json.decode(response.body);
      Post posts = Post?.fromJson(jsonResponse);
      Iterable dataResponse = posts.data;
      List<Datum> dataList = posts.data.toList();
      return dataList;
    } else
      print("Error");
  }
  Future<List<Datum>?> getData4() async {
    final httpClient = http.Client();
    // try {
    var response = await httpClient.get(Uri.parse(baseUrl4));
    if (response.statusCode == 200) {
      var jsonResponse = json.decode(response.body);
      Post posts = Post?.fromJson(jsonResponse);
      Iterable dataResponse = posts.data;
      List<Datum> dataList = posts.data.toList();
      return dataList;
    } else
      print("Error");
  }
}