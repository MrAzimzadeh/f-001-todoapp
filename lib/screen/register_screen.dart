import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#E5E5E5"),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Welcom"
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox.fromSize(size: Size(0, 8)),
                Text(
                  'Let’s help you meet your tasks . ',
                  style: GoogleFonts.poppins(
                    fontSize: 13,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SizedBox.fromSize(size: Size(0, 70)),
                TextField(
                  decoration: _buildTextField(
                    hint: "Enter your full name",
                    icon: null,
                  ),
                ),
                SizedBox.fromSize(size: Size(0, 20)),
                TextField(
                  decoration: _buildTextField(
                    hint: "Enter your email",
                    icon: null,
                  ),
                ),
                SizedBox.fromSize(size: Size(0, 20)),
                TextField(
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: _buildTextField(
                    hint: "Enter Password",
                    icon: Icon(Icons.visibility_off),
                  ),
                ),
                SizedBox.fromSize(size: Size(0, 20)),
                TextField(
                  decoration: _buildTextField(
                    hint: "Confirm Password",
                    icon: Icon(Icons.visibility_off),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  InputDecoration _buildTextField({required String hint, Icon? icon = null}) {
    return InputDecoration(
      suffixIcon: icon,
      filled: true,
      fillColor: Colors.white,
      contentPadding: EdgeInsets.symmetric(horizontal: 32, vertical: 10),
      hintText: hint,
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.transparent),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.transparent),
      ),
    );
  }
}
