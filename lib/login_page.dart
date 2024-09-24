import 'package:flutter/material.dart';
import 'package:netflix_login/register_page.dart';
import 'package:netflix_login/widgets/my_button_login.dart';
import 'package:netflix_login/widgets/my_colors.dart';
import 'package:netflix_login/widgets/my_text_login.dart';
import 'package:netflix_login/widgets/my_text_field_netflix.dart';


class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Image.asset(
            "asset/arrow.png",
                width: 20,
              height: 20,
            ),
            SizedBox(width: 15),
            Image.asset(
              "asset/netflix.png",
              width: 100,
              height: 100,
            ),
          ],
        ),
        elevation: 0,
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 80.9),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 20),
              MyTextField(hintText: "Email atau Nomor Ponsel", isObsecure: false),
              SizedBox(height: 5.5),
          MyTextField(hintText: "Masukan Sandi", isObsecure: true),
              SizedBox(height: 8.5),
           MyButton(text: "Masuk", onPressed: (){}),
              SizedBox(height: 15),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: MyText(text: "ATAU", color: textColor, fontSize: 18, fontWeight: FontWeight.bold, textAlign: TextAlign.center)
              ),
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.grey[800],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 7),
                  child: MyText(text: 'Gunakan Kode Masuk', color: textColor, fontSize: 17, fontWeight: FontWeight.bold,textAlign: TextAlign.center,)
                  )
                ),
              SizedBox(height: 10),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: MyText(text: "Lupa Sandi?", color: textColor, fontSize: 18, fontWeight: FontWeight.bold, textAlign: TextAlign.center)
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => register()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                ),
                child: const Text(
                  "Ingin mencoba Netflix? Daftar Sekarang",
                  style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 12),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Proses masuk dilindungi oleh reCAPTCHA Google untuk memastikan kamu bukan bot. ",
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                      TextSpan(
                        text: "Pelajari selengkapnya",
                        style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}