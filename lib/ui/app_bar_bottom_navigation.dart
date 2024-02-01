import 'package:flutter/material.dart';
import 'package:youtube_video_ai_translate_application/ui/main/main_screen.dart';
import 'package:youtube_video_ai_translate_application/ui/storage/storage_screen.dart';
import 'package:youtube_video_ai_translate_application/ui/user/my_page/MyPage.dart';

class AppBarBottomNavigation extends StatefulWidget {
  const AppBarBottomNavigation({super.key});

  @override
  State<AppBarBottomNavigation> createState() => _AppBarBottomNavigationState();
}

class _AppBarBottomNavigationState extends State<AppBarBottomNavigation> {
  int _selectedIndex = 0;
  static List<Widget> pages = [
    const MainScreen(),
    const StorageScreen(),
    const MyPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: const FlutterLogo(),
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(

        showSelectedLabels: true,
        // 선택된 라벨 보이기
        showUnselectedLabels: true,
        // 선택되지 않은 라벨 보이기
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
          // print('Selected index: $index');
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.g_translate), label: 'AI 번역'),
          BottomNavigationBarItem(
              icon: Icon(Icons.subscriptions), label: '보관함'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: '내정보'),
        ],
      ),
    );
  }
}
