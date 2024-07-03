// ignore: unused_import
// ignore_for_file: dead_code
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: const Text('WhatsApp', style: TextStyle(color: Colors.white)),
          bottom: const TabBar(tabs: [
            Tab(
              child: Icon(Icons.groups_3_rounded),
            ),
            Tab(
              child: Text('Chats', style: TextStyle(color: Colors.white)),
            ),
            Tab(
              child: Text('Updates', style: TextStyle(color: Colors.white)),
            ),
            Tab(
              child: Text('Calls', style: TextStyle(color: Colors.white)),
            ),
          ]),
          actions: [
            const Icon(Icons.camera_enhance_rounded, color: Colors.white),
            const SizedBox(
              width: 40,
            ),
            const Icon(Icons.search, color: Colors.white),
            const SizedBox(
              width: 40,
            ),
            PopupMenuButton(
                icon: Icon(Icons.more_vert_outlined, color: Colors.white),
                itemBuilder: (
                  context,
                ) =>
                    const [
                      PopupMenuItem(value: 1, child: Text('New Group')),
                      PopupMenuItem(value: 2, child: Text('New boadcast')),
                      PopupMenuItem(value: 3, child: Text('Linked devices')),
                      PopupMenuItem(value: 4, child: Text('Starred Messages')),
                      PopupMenuItem(value: 5, child: Text('Settings')),
                    ]),
            SizedBox(width: 30),
          ],
        ),
        body: TabBarView(children: [
          const Text('Community'),
          ListView.builder(
              itemCount: 50,
              itemBuilder: ((context, index) {
                return const ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://th.bing.com/th/id/R.959687f59e933be5da446a768bd1d2cd?rik=%2fspw67TpNcdD7g&riu=http%3a%2f%2fwww.cosercosplay.com%2fimages%2fcosplay%2fAmazing+Spiderman+Costume+For+Halloween+16081201+(9).jpg&ehk=3uUbYJFWO3WZg8tmmWYhe%2bZyGAC%2bH2D%2fI4Y%2f8WsUu1U%3d&risl=&pid=ImgRaw&r=0'),
                  ),
                  title: Text('Spider man'),
                  subtitle: Text('hey, wanna take a ride?!'),
                  trailing: Text('1:00 AM'),
                );
              })),
          ListView.builder(
              itemCount: 50,
              itemBuilder: ((context, index) {
                return ListTile(
                  leading: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.green.withOpacity(0.6),
                          width: 3,
                        )),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://th.bing.com/th/id/R.959687f59e933be5da446a768bd1d2cd?rik=%2fspw67TpNcdD7g&riu=http%3a%2f%2fwww.cosercosplay.com%2fimages%2fcosplay%2fAmazing+Spiderman+Costume+For+Halloween+16081201+(9).jpg&ehk=3uUbYJFWO3WZg8tmmWYhe%2bZyGAC%2bH2D%2fI4Y%2f8WsUu1U%3d&risl=&pid=ImgRaw&r=0'),
                    ),
                  ),
                  title: Text('Spiderman'),
                  subtitle: Text('35min ago'),
                );
              })),
          ListView.builder(
              itemCount: 50,
              itemBuilder: ((context, index) {
                return ListTile(
                  leading: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://th.bing.com/th/id/R.959687f59e933be5da446a768bd1d2cd?rik=%2fspw67TpNcdD7g&riu=http%3a%2f%2fwww.cosercosplay.com%2fimages%2fcosplay%2fAmazing+Spiderman+Costume+For+Halloween+16081201+(9).jpg&ehk=3uUbYJFWO3WZg8tmmWYhe%2bZyGAC%2bH2D%2fI4Y%2f8WsUu1U%3d&risl=&pid=ImgRaw&r=0'),
                  ),
                  title: Text('Spider man'),
                  subtitle: const Row(
                    children: [
                      Icon(
                        Icons.call_received_outlined,
                        color: Colors.green,
                        size: 15,
                      ),
                      Text(
                        'Yesterday,7:39PM',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  trailing: Icon(
                    index / 2 == 0 ? Icons.call : Icons.video_call,
                    color: Colors.green,
                    size: 20,
                  ),
                );
              })),
        ]),
      ),
    );
  }
}
