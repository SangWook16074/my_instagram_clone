import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final Width = MediaQuery.of(context).size.width - 40;

    final _account = TextEditingController();
    final _password = TextEditingController();
    var _showPassword = false;

    _toggle() {
      if (_showPassword == false) {
        setState(() {
          _showPassword = true;
        });
      } else {
        setState(() {
          _showPassword = false;
        });
      }
    }

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        bottomNavigationBar: BottomAppBar(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.min,
          children: [
            Divider(
              color: Colors.grey,
              height: 5,
            ),
            Container(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '계정이 없으신가요?',
                    style: TextStyle(fontSize: 13),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        '가입하기',
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.indigo),
                      ))
                ],
              ),
            ),
          ],
        )),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Instagram',
                style: GoogleFonts.lobster(textStyle: TextStyle(fontSize: 40)),
              ),
              Container(
                  margin: EdgeInsets.all(8.0),
                  width: Width,
                  height: 50,
                  child: TextField(
                    controller: _account,
                    decoration: InputDecoration(
                      hintText: '전화번호, 이메일 주소 또는 사용자 이름',
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 1.0),
                          borderRadius: BorderRadius.circular(8.0)),
                    ),
                  )),
              Container(
                  margin: EdgeInsets.all(8.0),
                  width: Width,
                  height: 50,
                  child: TextField(
                    controller: _password,
                    decoration: InputDecoration(
                      suffixIcon: GestureDetector(
                          child: (_showPassword != true)
                              ? Icon(
                                  Icons.visibility_off,
                                  color: Colors.grey,
                                )
                              : Icon(
                                  Icons.visibility,
                                  color: Colors.blue,
                                ),
                          onTap: () => _toggle()),
                      hintText: '비밀번호',
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 1.0),
                          borderRadius: BorderRadius.circular(8.0)),
                    ),
                  )),
              Container(
                margin: EdgeInsets.all(8.0),
                width: Width,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('로그인'),
                  style: ButtonStyle(),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('로그인 상세 정보를 잊으셨나요?', style: TextStyle(fontSize: 13)),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        '로그인 도움말 보기',
                        style: TextStyle(
                            fontSize: 13,
                            color: Colors.indigo,
                            fontWeight: FontWeight.bold),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
