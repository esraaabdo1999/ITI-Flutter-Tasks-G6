import 'package:login_page/models/users.dart';
import 'package:login_page/screens/userDetails.dart';
import 'package:login_page/screens/widget/cards.dart';
import 'package:login_page/services/userService.dart';
import 'package:login_page/utils.dart';
import 'package:flutter/material.dart';

class usersScreen extends StatefulWidget {
  @override
  _usersScreenState createState() => _usersScreenState();
}

class _usersScreenState extends State<usersScreen> {
  bool loading = true;
  List<User> users = [];

  getUserList() async {
    users = await userService().getUser();
    loading = false;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getUserList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Users Screen"),
      ),
      body: loading
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: users.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                      onTap: () {
                        pushPage(context, UserDetails(users[index]));
                      },
                      child: MyCard(content: "${users[index].name}")),
                );
              },
            ),
    );
  }
}
