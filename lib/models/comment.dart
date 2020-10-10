class Comment {
  String comment;
  String timeStamp;
  String userId;
  String userName;
  String userImage;
  String postId;

  Comment(
      {this.comment,
      this.timeStamp,
      this.userId,
      this.userName,
      this.userImage,
      this.postId});

  factory Comment.fromJson(Map<String, dynamic> json) {
    return Comment(
        comment: json['comment'],
        timeStamp: json['timeStamp'],
        userId: json['userId'],
        userImage: json['userImage'],
        userName: json['userName'],
        postId: json['postId']);
  }
}
