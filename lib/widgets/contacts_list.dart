import 'package:flutter/material.dart';

import '../info.dart';
import '../screens/mobile_chat_screen.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding:const EdgeInsets.only(top: 10),
        child:ListView.builder(itemCount: info.length,itemBuilder: (context,index){
          return InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => MobileChatScreen()));
            },
            child: Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: ListTile(
                title: Text(info[index]['name'].toString(),style:const TextStyle(fontSize: 17)),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top:6),
                  child: Text(info[index]['message'].toString(),style:const TextStyle(fontSize: 15),)
                ),
                leading: CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(
                    info[index]['profilePic'].toString()
                  ),
                ),
                trailing: Text(info[index]['time'].toString(),style: TextStyle(fontSize: 13,color: Colors.grey),),
              ),
            ),
          );
        }) ,
    );
  }
}
