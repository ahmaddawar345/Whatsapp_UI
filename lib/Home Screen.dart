import 'package:flutter/material.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4, child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title:const Text('WhatsApp'),
        bottom:const TabBar(tabs: [
          Icon(Icons.camera_alt_rounded),
          Tab(
            child: Text('Chats'),
          ),
          Tab(
            child: Text('Status'),
          ),
          Tab(child: Text('Calls')),
        ]),
        actions: [
          const Icon(Icons.search),
          const SizedBox(width: 10),
          PopupMenuButton(itemBuilder: (context) => [
            const PopupMenuItem(
                value: '1',
                child: Text('New Group')),
            const PopupMenuItem(
                value: '2',
                child: Text('Settings')),
            const PopupMenuItem(
                value: '3',
                child: Text('Logout')),
          ]),
        ],
      ),
      body: TabBarView(children: [
        const Text('Camera'),
        ListView.builder(
            itemCount: 30,
            itemBuilder:(contex,index){
              return const ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('shoaib/sho.jpg.jpg'),
                ),
                title: Text('M Shoaib'),
                subtitle: Text('Where is my Computer'),
                trailing: Text('5 : 45 PM'),
              );
            }),
        const Text('Status'),
        const Text('Calls'),
      ]),
    ),);
  }
}

//     return DefaultTabController(
//         length: 4,
//         child: Scaffold(
//           appBar: AppBar(
//             title:const Text('Whats App'),
//             bottom:const TabBar(
//               tabs:[
//                 Tab(
//                     child: Icon(Icons.camera_alt_rounded)),
//                 Tab(
//                     child: Text('Chats')),
//                 Tab(child: Text('Status')),
//
//                 Tab(child: Text('Calls')),
//               ],),
//             actions: [
//               const Icon(Icons.search),
//               const SizedBox(width: 10),
//               PopupMenuButton(
//                 itemBuilder: (context) => const [
//                   PopupMenuItem(
//                     value: '1',
//                     child: Text('New Group'),
//                   ),
//                   PopupMenuItem(
//                     value: '2',
//                     child: Text('Setting'),),
//                   PopupMenuItem(
//                     value: '3',
//                     child: Text('Logout'),),
//                 ],
//               ),
//             ],
//           ),
//           body: TabBarView(
//             children: [
//               const Text('Camera'),
//               ListView.builder(
//                   itemCount: 50,
//                   itemBuilder: (context,index){
//                     return const ListTile(
//                       leading: CircleAvatar(
//                         backgroundImage: AssetImage('shoaib/sho.jpg.jpg'),),
//                       title: Text('Shoaib'),
//                       subtitle: Text('Where is my Mobile'),
//                       trailing: Text('6 PM'),
//                     );
//                   }
//               ),
//             ],
//           ),
//         ));
//   }
// }
