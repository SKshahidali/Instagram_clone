import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),

            // Header Data //
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Circle Avatar //
                    CircleAvatar(
                      radius: 40,
                      backgroundImage:
                          AssetImage("assets/images/Profile_Pictures/gamer.jpg"),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    // Posts //
                    Profile_info_text(
                      Category: 'Posts',
                      numbers: 16,
                    ),
                    //Followers //
                    Profile_info_text(
                      Category: 'Followers',
                      numbers: 221,
                    ),
                    //Following //
                    Profile_info_text(
                      Category: 'Following',
                      numbers: 1045,
                    ),
                  ],
                ),
                const SizedBox(height: 16,),

                // Instagram  Name,Bio and Some Buttons //
                const Text("VoiDxPredator",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                const Text("ESports Athlete \n Red Bull Champions \n XQRF Esports India"),
                const SizedBox(height: 14,),

                //Buttons //
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(12)
                      ),
                      child:const Center(child: Text("Edit Profile",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: Colors.black),)),
                    ),
                    

                    Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(12)
                      ),
                      child:const Center(child: Text("Contact",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: Colors.black),)),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Profile_info_text extends StatelessWidget {
  const Profile_info_text({
    super.key,
    required this.Category,
    required this.numbers,
  });
  final String Category;
  final int numbers;

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(children: [
        TextSpan(
            text: numbers.toString(),
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 16)),
                const TextSpan(
            text: " \n",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                color: Colors.black,
                fontSize: 18)),
        TextSpan(
            text: Category,
            style: const TextStyle(
                fontWeight: FontWeight.w400,
                color: Colors.black,
                fontSize: 18)),
      ]),
    );
  }
}
