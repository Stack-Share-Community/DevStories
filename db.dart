import 'package:dev_stories/models/comment.dart';

const userDb = {
  "_id": "1",
  "name": "Kristania",
  "profession": "Full Stack Developer",
  "email": "ka@gmail.com",
  "profilePic":
      "https://images.squarespace-cdn.com/content/v1/592738c58419c2fe84fbdb81/1511808075655-YGGD8CMMY2R85X05OKVK/ke17ZwdGBToddI8pDm48kIKay4bYLpKTFWoXFdGxjdZ7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QHyNOqBUUEtDDsRWrJLTmo3_5ncHsS_KC884-Z46vJXn_CAy8A416_wq-2ydr5e5Si7pbxezXfOOzs3720f9z/DBS_Kevin_web_2640.jpg",
  "friends": ["2", "3", "4", "5"],
};

const postDb = [
  {
    "_id": "12312",
    "postTitle": "Caption Post",
    "userId": "1",
    "userName": "Crimson",
    "postDescription": "Lorem ipsum id the best tect to folowrs",
    "userProfilePic":
        "https://images.squarespace-cdn.com/content/v1/592738c58419c2fe84fbdb81/1511808075655-YGGD8CMMY2R85X05OKVK/ke17ZwdGBToddI8pDm48kIKay4bYLpKTFWoXFdGxjdZ7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QHyNOqBUUEtDDsRWrJLTmo3_5ncHsS_KC884-Z46vJXn_CAy8A416_wq-2ydr5e5Si7pbxezXfOOzs3720f9z/DBS_Kevin_web_2640.jpg",
    "timeStamp": "4 min ago",
    "hasImage": true,
    "images": [
      "https://cbsetoday.com/wp-content/uploads/2018/09/steve-jobs-wallpaper-05.jpg"
    ]
  },
  {
    "_id": "12312",
    "userName": "Lindranda",
    "postTitle": "Caption Post",
    "userId": "1",
    "postDescription": "Lorem ipsum id the best tect to folowrs",
    "userProfilePic":
        "https://images.squarespace-cdn.com/content/v1/592738c58419c2fe84fbdb81/1511808075655-YGGD8CMMY2R85X05OKVK/ke17ZwdGBToddI8pDm48kIKay4bYLpKTFWoXFdGxjdZ7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QHyNOqBUUEtDDsRWrJLTmo3_5ncHsS_KC884-Z46vJXn_CAy8A416_wq-2ydr5e5Si7pbxezXfOOzs3720f9z/DBS_Kevin_web_2640.jpg",
    "timeStamp": "4 min ago",
    "hasImage": true,
    "images": [
      "https://cbsetoday.com/wp-content/uploads/2018/09/steve-jobs-wallpaper-05.jpg",
      "https://cbsetoday.com/wp-content/uploads/2018/09/steve-jobs-wallpaper-05.jpg"
    ]
  }
];

const commentsDb = [
  {
    "postId": "1232321",
    "comment": "Hi This is great ",
    "timeStamp": "23 hr Ago",
    "userId": "1",
    "userName": "Pisto",
    "userImage":
        "https://cbsetoday.com/wp-content/uploads/2018/09/steve-jobs-wallpaper-05.jpg"
  },
  {
    "postId": "1232321",
    "comment": "Hi This is great ",
    "timeStamp": "1 day Ago",
    "userId": "1",
    "userName": "Ishaan",
    "userImage":
        "https://cbsetoday.com/wp-content/uploads/2018/09/steve-jobs-wallpaper-05.jpg"
  },
  {
    "postId": "1232321",
    "comment":
        "Hi This is great that i am in the name of great posr asd in the yaas erhn poaster insertsf as",
    "timeStamp": "1 day",
    "userId": "1",
    "userName": "Crimets",
    "userImage":
        "https://cbsetoday.com/wp-content/uploads/2018/09/steve-jobs-wallpaper-05.jpg"
  },
  {
    "postId": "1232321",
    "comment":
        "Hi This is great that i am in the name of great posr asd in the yaas erhn poaster insertsf as",
    "timeStamp": "1 day",
    "userId": "1",
    "userName": "Crimets",
    "userImage":
        "https://cbsetoday.com/wp-content/uploads/2018/09/steve-jobs-wallpaper-05.jpg"
  },
];
