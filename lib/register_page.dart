import 'package:flutter/material.dart';
import 'package:netflix_login/widgets/my_button_register.dart';
import 'package:netflix_login/widgets/my_check_box.dart';
import 'package:netflix_login/widgets/my_colors.dart';
import 'package:netflix_login/widgets/my_text_field_register.dart';
import 'package:netflix_login/widgets/my_text_register.dart';


class register extends StatefulWidget {
  const register({super.key});

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              "asset/netflix.png",
              width: 100,
              height: 100,
            ),
            SizedBox(width: 10),
           MyRegisterText(text: "BANTUAN", color: secondTextColor, fontSize: 19, fontWeight: FontWeight.bold, textAlign: TextAlign.left,),
           MyRegisterText(text: "MASUKAN", color: secondTextColor, fontSize: 18, fontWeight: FontWeight.bold, textAlign: TextAlign.left,),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0), // Add padding around the entire body
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 12),
        MyTextRich(children: [
          TextSpan(
            text: "Film dan acara TV tak terbatas,",
            style: TextStyle(color: secondTextColor, fontSize: 23, fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text: "& banyak lagi",
            style: TextStyle(color: secondTextColor, fontSize: 23, fontWeight: FontWeight.bold),
          )
        ]),
            SizedBox(height: 17),
           MyRegisterText(text: "Buat akun dan kami akan mengirimimu email. yang berisi semua info yang perlu diketahui tentang Netflix.", color: secondTextColor, fontSize: 17.9,),
            SizedBox(height: 17),
            MyRegisterTextField(
              hintText: 'Email',
            ),
            SizedBox(height: 5.5),
            MyRegisterTextField(
              hintText: 'Sandi',
              isObscure: true,
            ),
            SizedBox(height: 10),
            MyCheckBox(
              value: _isChecked,
              onChanged: (bool? value) {
                setState(() {
                  _isChecked = value ?? false;
                });
              },
              text: "Jangan kirimi saya email berisi tawaran khusus Netflix",
            ),
            SizedBox(height: 15),
            MyRegisterButton(
              text: "Buat Akun",
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}