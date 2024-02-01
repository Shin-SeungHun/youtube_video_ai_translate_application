import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  String? email = 'qwer1234@gmail.com';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20), // 상단 여백

              const Center(
                child: Text(
                  '회원 정보',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white54),
                ),
              ),
              const SizedBox(height: 40),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    '아이디: ',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  email != null
                      ? Text(
                          '$email',
                          style: const TextStyle(
                            fontSize: 18,
                          ),
                        )
                      : const Center(child: CircularProgressIndicator()),
                ],
              ),

              const SizedBox(height: 20), // 아이디와 버튼 간격
              // 비밀번호 수정 버튼
              ElevatedButton(
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(
                    Size(MediaQuery.of(context).size.width, 40.0),
                  ),
                ),
                onPressed: () {},
                child: const Text('비밀번호 수정'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(
                    Size(MediaQuery.of(context).size.width, 40.0),
                  ),
                ),
                onPressed: () {},
                child: const Text('회원탈퇴'),
              ),
              const SizedBox(height: 20),
              // 로그아웃 버튼
              ElevatedButton(
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(
                    Size(MediaQuery.of(context).size.width, 40.0),
                  ),
                ),
                onPressed: () {},
                child: const Text('로그아웃'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
