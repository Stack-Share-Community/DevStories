import 'package:dev_stories/models/user.dart';

class Post {
  String userId,
      postTitle,
      postDescription,
      userProfilePic,
      userName,
      timeStamp,
      postId;
  int likes;
  bool hasImage;
  List<String> images;
  Post(
      {this.userId,
      this.postTitle,
      this.userProfilePic,
      this.userName,
      this.timeStamp,
      this.postId,
      this.postDescription,
      this.hasImage,
      this.images});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
        userId: json['userId'],
        postId: json['_id'],
        userName: json['userName'],
        postTitle: json['postTitle'],
        userProfilePic: json['userProfilePic'],
        hasImage: json['hasImage'],
        timeStamp: json['timeStamp'],
        images: json['images'],
        postDescription: json['postDescription']);
  }
}
