import 'package:flutter/material.dart';
import 'package:my_flutter_chat/search.dart';
//import 'package:my_flutter_chat/secondscreen.dart';
import 'package:my_flutter_chat/statuscsreen.dart';
import 'chat_tile.dart';

class ChatListView extends StatelessWidget {
  const ChatListView({super.key});


  @override
  Widget build(BuildContext context) {
    TextEditingController _searchController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 17, 110, 187),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.deepPurple, Colors.purple.shade300],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        title: TextField(
          controller: _searchController,
          style: const TextStyle(color: Colors.white),
          cursorColor: Colors.white,
          decoration: const InputDecoration(
            hintText: 'Search...',
            hintStyle: TextStyle(color: Colors.white54),
            border: InputBorder.none,
          ),
          onChanged: (value) {
            // Perform search functionality here
          },
        ),

        centerTitle: true, // Aligns the title text to the center
        toolbarHeight: 70,
        elevation: 0,
        leading: Container(
          margin:
              const EdgeInsets.only(left: 12.0), // Adjust the margin as needed
          child: const CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: 25.0, // Radius of the CircleAvatar
            child: Image(
              height: 40.0, // Adjust the height as needed
              width: 40.0, // Adjust the width as needed
              image: AssetImage(
                "assests/images/dp.png",
              ),
              fit: BoxFit.cover, // Make the image cover the available space
            ),
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 18.0),
            child: const Icon(
              Icons.camera_alt_sharp,
              size: 25.0,
              color: Colors.pinkAccent,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 18.0),
            child: const Icon(
              Icons.search_rounded,
              size: 25.0,
              color: Colors.cyanAccent,
            ),
          ),
        ],

      ),

      body:

      Column(
        children: [
          Container(
            height: 50,
            color: const Color.fromARGB(255, 17, 110, 187),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  // onTap: () {
                  //   Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) =>
                  //             SimpleChatApp()), // Replace with your status screen widget
                  //   );
                  // },
                  child: const Text(
                    "Chats",
                    style: TextStyle(
                      color: Colors.amberAccent,
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                 GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              StatusPage()), // Replace with your status screen widget
                    );
                  },
                  child: const Text(
                    "Status",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                const Text(
                  "Calls",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ChatTile(
                      name: "ALi", msg: "Okay", time: "4:00PM",img: "assests/images/picture.png"),
                  ChatTile(
                      name: "Maha", msg: "Alright!", time: "2:00PM" , img: "assests/images/women.png"),
                  ChatTile(
                      name: "Aya", msg: "How are You?", time: "3:00PM" ,img:"assests/images/avatar.png"),
                  ChatTile(name: "Faiqa", msg: "Okay♥ ", time: "6:00PM" , img:"assests/images/img.png"),
                  ChatTile(
                      name: "Sara",
                      msg: "~ Sent A Photo",
                      time: "9:00PM" , img: "assests/images/girl.png"),
                   ChatTile(
                      name: "Soha", msg: "Okay", time: "4:00PM",img: "assests/images/picture.png"),
                  ChatTile(
                      name: "Marwa", msg: "Alright!", time: "2:00PM" , img: "assests/images/women.png"),
                  ChatTile(
                      name: "Heba", msg: "How are You?", time: "3:00PM" ,img:"assests/images/avatar.png"),
                  ChatTile(name: "Faiqa", msg: "Okay♥ ", time: "6:00PM" , img:"assests/images/img.png"),
                  ChatTile(
                      name: "Sohair",
                      msg: "~ Sent A Photo",
                      time: "9:00PM" , img: "assests/images/girl.png"),
                   ChatTile(
                      name: "Asmaa", msg: "Okay", time: "4:00PM",img: "assests/images/picture.png"),
                  ChatTile(
                      name: "Mohmed", msg: "Alright!", time: "2:00PM" , img: "assests/images/women.png"),
                  ChatTile(
                      name: "Sahar", msg: "How are You?", time: "3:00PM" ,img:"assests/images/avatar.png"),
                  ChatTile(name: "Faiqa", msg: "Okay♥ ", time: "6:00PM" , img:"assests/images/img.png"),
                  ChatTile(
                      name: "Hany",
                      msg: "~ Sent A Photo",
                      time: "9:00PM" , img: "assests/images/girl.png"),



                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: Container(
        width: 60,
        height: 60,
        margin: const EdgeInsets.only(right: 10, bottom: 10),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 17, 110, 187),
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 12,
              offset: const Offset(0, -1),
            ),
          ],
        ),
  //       child: IconButton(
  // //         onPressed: (){
  // //           Navigator.push(
  // //   context,
  // //   MaterialPageRoute(builder: (context) =>  SimpleChatApp()),
  // // );
  //           },
  //         icon: const Icon(Icons.add_box_rounded),
  //         iconSize: 25.0,
  //         color: Colors.amberAccent,
  //       ),
      ),
    );
  }
}
