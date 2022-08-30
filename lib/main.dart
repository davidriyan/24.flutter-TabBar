import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text('TabBar'),
            bottom: TabBar(tabs: [
              Tab(
                icon: Icon(Icons.camera),
                text: 'kamera',
              ),
              Tab(
                child: Image(
                    image: NetworkImage(
                        'https://img2.pngdownload.id/20180509/fpq/kisspng-emoji-iphone-emoticon-sadness-text-messaging-5af3a4037e55a8.1394214015259166755175.jpg')),
              ),
              Tab(icon: Icon(Icons.call)),
              Tab(
                text: 'pesan',
              ),
            ]),
          ),
          body: TabBarView(children: [
            Center(child: Text('tab 1')),
            Center(child: Text('tab 2')),
            Center(child: Text('tab 3')),
            Center(child: Text('tab 4'))
          ]),
        ),
      ),
    );
  }
}
