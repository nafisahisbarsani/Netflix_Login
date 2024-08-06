import 'package:flutter/material.dart';


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
            Text(
             "BANTUAN",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              "MASUK",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0), // Add padding around the entire body
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 12,),
            RichText(
              textAlign: TextAlign.start,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Film dan acara TV tak terbatas,",
                    style: TextStyle(color: Colors.black, fontSize: 23, fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: " & banyak lagi",
                    style: TextStyle(color: Colors.black, fontSize: 23, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(height: 17),
            Text(
              "Buat akun dan kami akan mengirimimu email, yang berisi semua informasi yang perlu diketahui tentang Netflix.",
              style: TextStyle(color: Colors.black, fontSize: 17.9),
            ),
            SizedBox(height: 17),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(7),
                  ),
                ),
              ),
            ),
            SizedBox(height: 5.5),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Sandi',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(7),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Checkbox(
                  value: _isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      _isChecked = value ?? false;
                    });
                  },
                ),
                Expanded(
                  child: Text(
                    "Jangan kirimi saya email berisi tawaran khusus Netflix",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Center(
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    padding: EdgeInsets.symmetric(vertical: 12.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7), // Tambahkan border radius pada tombol
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Buat Akun",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}