import 'package:flutter/material.dart';
import 'package:login_page/models/users.dart';
import 'package:dio/dio.dart';

class userService{
  String baseUrl = "https://jsonplaceholder.typicode.com/";
  String users = "users";

  Future<List<User>>getUser() async {
    List<User> users_List = [];
    Response response = await Dio().get("$baseUrl"+"$users");
    var data = response.data;
    data.forEach((userItem){
      User user = User.fromJson(userItem);
    users_List.add(user);
    });
    return users_List; 
    
  }
}