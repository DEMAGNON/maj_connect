import 'package:flutter/material.dart';
// import 'package:maj_connect/accueil.dart';

class PhoneAuthScreen extends StatefulWidget {
  final String verificationId;

  PhoneAuthScreen({required this.verificationId});

  @override
  _PhoneAuthScreenState createState() => _PhoneAuthScreenState();
}

class _PhoneAuthScreenState extends State<PhoneAuthScreen> {
  final TextEditingController _otpController = TextEditingController();

  /* Future<void> _submitOTP(BuildContext context) async {
    String otp = _otpController.text.trim();
   
      await auth.signInWithCredential(credential);
      print(credential);
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => AccueilPage()),
      );
    } catch (e) {
      print(e.toString());
    }
  } */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Phone Authentication")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            SizedBox(height: 60),
            Center(
              child: Text(
                "OTP Authentication",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w100),
              ),
            ),
            SizedBox(height: 50),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 50),
              child: TextFormField(
                controller: _otpController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  labelText: "Phone OTP",
                ),
              ),
            ),
            SizedBox(height: 16),
            InkWell(
              // onTap: () => _submitOTP(context),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 25),
                decoration: BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  "Verify",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
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
