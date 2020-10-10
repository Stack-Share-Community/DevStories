import 'package:dev_stories/models/post.dart';

import 'package:dev_stories/widgets/post.dart';
import 'package:dev_stories/widgets/stories.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../db.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Post> posts = [];

  getPost() {
    postDb.forEach((e) {
      Post post = new Post.fromJson(e);
      posts.add(post);
    });

    return posts;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getPost();
    print(posts[0].hasImage);
    print(posts[0].userName);
    print(posts[0].postDescription);
    print(posts[0].images);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Dev Stories",
          style: TextStyle(color: Colors.grey[800]),
        ),
        backgroundColor: Colors.grey[200],
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              buildSearch(),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: buildStories(),
              ),
              buildPosts(posts)
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildSearch() {
  return Container(
    margin: EdgeInsets.only(top: 40.0, left: 20.0, right: 20.0, bottom: 10.0),
    // padding: EdgeInsets.symmetric(vertical: 40.0, horizontal: 20.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(50.0),
      color: Colors.grey[300],
    ),
    child: TextFormField(
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
          hintText: "Search",
          prefixIcon: Icon(
            Icons.search,
            color: Colors.grey[800],
          ),
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(horizontal: 10.0)),
    ),
  );
}

Widget buildStories() {
  return Column(children: [
    Row(
      children: [Text("Popular Stories")],
    ),
    SizedBox(
      height: 20,
    ),
    Container(
      height: 180,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          makeStory(
              storyImage: 'assets/images/s1.jpg',
              userImage: 'assets/images/s2.png',
              userName: "Krate Lama"),
          makeStory(
              storyImage: 'assets/images/s2.png',
              userImage: 'assets/images/s3.jpeg',
              userName: "Python Lover"),
          makeStory(
              storyImage: 'assets/images/s1.jpg',
              userImage: 'assets/images/s2.png',
              userName: "Krate Lama"),
          makeStory(
              storyImage: 'assets/images/s1.jpg',
              userImage: 'assets/images/s2.png',
              userName: "Krate Lama"),
        ],
      ),
    )
  ]);
}

Widget buildPosts(posts) {
  return ListView.builder(
    physics: NeverScrollableScrollPhysics(),
    shrinkWrap: true,
    itemCount: posts.length,
    itemBuilder: (context, i) {
      Post post = posts[i];
      // print(post.userName);
      return Posts(
        hasImage: post.hasImage,
        userImage: post.userProfilePic,
        userName: post.userName,
        postDescription: post.postDescription,
        timeAgo: post.timeStamp,
        images: post.images,
        likeNumber: 20,
        commentNumber: 30,
      );
    },
  );
}
