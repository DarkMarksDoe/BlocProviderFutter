import 'package:flutter/material.dart';

class NewsState{
  final bool loading;
  final List<dynamic> news;

  NewsState(@required this.loading,@required this.news);
  
}