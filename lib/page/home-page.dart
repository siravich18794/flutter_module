import 'package:clone_money_thunder/page/first-page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  "เข้าสู่ระบบ",
                  style: TextStyle(
                      fontFamily: "Mitr",
                      fontSize: 24,
                      fontWeight: FontWeight.w700),
                ),
              ),
              Container(
                child: Text(
                  "กรุณาเข้าสู่ระบบเพื่อดูโปรโมชั่นและขอสินเชื่อ",
                  style: TextStyle(
                      fontFamily: "Mitr",
                      fontSize: 18,
                      fontWeight: FontWeight.w400),
                ),
              ),
              Container(
                child: ElevatedButton(
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ))),
                    onPressed: (() => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FirstPage()))),
                    child: Text(
                      "เข้าสู่ระบบ / สมัครใช้บริการ",
                      style: TextStyle(
                          fontFamily: "Mitr",
                          fontSize: 18,
                          fontWeight: FontWeight.w400),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
