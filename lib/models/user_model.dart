class Users {
  final String ProfileImage;
  final String UserName;

  Users({
    required this.ProfileImage,
    required this.UserName,
  });

  static List<Users> users = [
    Users(
      ProfileImage: "assets/images/user_Profiles/pp1.jpg",
      UserName: "UserName1",
    ),
    Users(
      ProfileImage: "assets/images/user_Profiles/pp2.jpg",
      UserName: "UserName2",
    ),
    Users(
      ProfileImage: "assets/images/user_Profiles/pp3.jpg",
      UserName: "UserName3",
    ),
    Users(
      ProfileImage: "assets/images/user_Profiles/pp4.png",
      UserName: "UserName4",
    ),
    Users(
      ProfileImage: "assets/images/user_Profiles/pp5.jpeg",
      UserName: "UserName5",
    ),
    Users(
      ProfileImage: "assets/images/user_Profiles/pp6.jpg",
      UserName: "UserName6",
    ),
  ];
}
