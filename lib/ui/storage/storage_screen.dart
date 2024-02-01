import 'package:flutter/material.dart';

class StorageScreen extends StatefulWidget {
  const StorageScreen({super.key});

  @override
  State<StorageScreen> createState() => _StorageScreenState();
}

class _StorageScreenState extends State<StorageScreen> {
  List<String> items = ['Item 1', 'Item 2', 'Item 3']; // 리스트 아이템을 저장하는 리스트

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: items.length, // 리스트 아이템의 개수를 지정
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index]), // 각 아이템에 해당하는 텍스트를 표시하는 ListTile 반환
          );
        },
      ),
    );
  }
}
