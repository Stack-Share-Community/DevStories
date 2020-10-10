class User {
  String id, name, email, profilePic, profession;
  List<String> friends;

  User(
      {this.id,
      this.name,
      this.email,
      this.profilePic,
      this.friends,
      this.profession});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        name: json['name'],
        email: json['email'],
        profession: json['profession'],
        friends: json['friends'],
        id: json['_id'],
        profilePic: json['profilePic']);
  }
}
