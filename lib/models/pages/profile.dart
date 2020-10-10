import 'package:dev_stories/models/user.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  User user;
  Profile({this.user});
  @override
  _ProfileState createState() => _ProfileState(user: user);
}

class _ProfileState extends State<Profile> {
  User user;

  _ProfileState({this.user});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: height / 3,
                  width: width,
                  // color: Colors.white,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      // borderRadius: BorderRadius.circular(20.0),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://img5.goodfon.com/wallpaper/nbig/3/98/abstraktnyi-geometricheskii-linii-background-fon.jpg'))),
                  child: Text(""),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  margin: EdgeInsets.only(top: 50.0, left: width / 3 - 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                          radius: 40,
                          backgroundImage: NetworkImage(user.profilePic)),
                      Text(
                        user.name,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        user.profession,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w100),
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: height / 3 - 70,
                  child: Container(
                    height: height / 2 - 10,
                    width: width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        gradient: LinearGradient(colors: [
                          Colors.black.withOpacity(.5),
                          Colors.black26
                        ], begin: Alignment.topCenter)),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(children: [
                            Text(
                              "FRIENDS",
                              style: TextStyle(
                                color: Colors.white54,
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              user.friends.length.toString(),
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ]),
                          Column(children: [
                            Text(
                              "STORIES",
                              style: TextStyle(
                                color: Colors.white54,
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "10",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ]),
                          Column(children: [
                            Text(
                              "RATING",
                              style: TextStyle(
                                color: Colors.white54,
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "4.3",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ]),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  physics: BouncingScrollPhysics(),
                  children: [
                    buildUserStory(
                        storyImage:
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTHozHN1cRwOjZp-rkren2uaSa0XO-Ia2Q26w&usqp=CAU',
                        hasImage: false,
                        storyTitle: "Lorem Ipsum in the state of motot"),
                    buildUserStory(
                        storyImage:
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTIiREjHpsolL5RsjWAgCW4dLj1KqNa3gYwJw&usqp=CAU',
                        hasImage: true),
                    buildUserStory(
                        storyImage:
                            'https://media.itpro.co.uk/image/upload/v1570816546/itpro/2019/02/software_shutterstock_1290773869.jpg',
                        hasImage: true),
                    buildUserStory(
                        storyImage:
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTHozHN1cRwOjZp-rkren2uaSa0XO-Ia2Q26w&usqp=CAU',
                        hasImage: true),
                  ]),
            )
          ],
        ),
      ),
    );
  }
}

Widget buildUserStory({storyImage, storyTitle, hasImage}) {
  return GestureDetector(
      onTap: () {},
      child: hasImage
          ? Container(
              height: 50,
              width: 20,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                    image: NetworkImage(storyImage), fit: BoxFit.cover),
              ),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.black38.withOpacity(.1),
                    borderRadius: BorderRadius.circular(12)),
              ))
          : Container(
              height: 50,
              width: 20,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(child: Text(storyTitle)),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  gradient: LinearGradient(
                      colors: [Colors.grey[200], Colors.grey[300]]))));
}
