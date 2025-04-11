import 'package:flutter/material.dart';
import 'package:mossef_app/modules/screens/Sign-up/optionalData.dart';
class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(height: 50),
              Text(
                "Sign Up",
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Divider(color: Colors.blue, thickness: 2),
              SizedBox(height: 20),
              _buildTextField("First name", "Enter your first name"),
              _buildTextField("Last name", "Enter your last name"),
              _buildTextField("Phone number", "Enter your phone number"),
              _buildTextField("Password", "Enter a strong password",
                  isPassword: true),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 5.0),
                  child: Text(
                    "Password should have",
                    style: TextStyle(fontSize: 12, color: Colors.blue),
                  ),
                ),
              ),
              _buildTextField("Email", "Enter your email address"),
              SizedBox(height: 10),
              Text("Location",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              SizedBox(height: 5),
              Row(
                children: [
                  Expanded(child: _buildDropdown("City")),
                  SizedBox(width: 10),
                  Expanded(child: _buildDropdown("المنطقة")),
                ],
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => OptionalData()),
                    );
                  },
                  child: Text(
                    "Optional necessary sign up information",
                    style: TextStyle(fontSize: 12, color: Colors.blue),
                  ),
                ),
              ),
              SizedBox(height: 20),
              _buildButton("Sign Up", Colors.blue, Colors.white),
              SizedBox(height: 40),
            ]),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String label, String hint, {bool isPassword = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 5),
        TextField(
          obscureText: isPassword,
          decoration: InputDecoration(
            hintText: hint,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        SizedBox(height: 10),
      ],
    );
  }

  Widget _buildDropdown(String hint) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          hint: Text(hint),
          items: [],
          onChanged: (value) {},
        ),
      ),
    );
  }

  Widget _buildButton(String text, Color bgColor, Color textColor) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: bgColor,
          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(color: textColor, fontSize: 16),
        ),
      ),
    );
  }
}
