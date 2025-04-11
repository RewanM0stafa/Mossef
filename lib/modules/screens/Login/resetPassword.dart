import 'package:flutter/material.dart';

class ResetPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 80,
                color: Colors.grey[300],
                child: Center(child: Icon(Icons.image, size: 50, color: Colors.grey[600])),
              ),
              SizedBox(height: 20),
              Text(
                "Reset the password",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                "New password must be different than the previous one",
                style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              _buildPasswordField("New Password"),
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
              SizedBox(height: 10),
              _buildPasswordField("Confirmed Password"),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 5.0),
                  child: Text(
                    "Must match the new password",
                    style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                  ),
                ),
              ),
              SizedBox(height: 20),
              _buildButton("Continue", Colors.grey[200]!, Colors.black),
              SizedBox(height: 10),
              _buildButton("Cancel", Colors.grey[400]!, Colors.black),
              SizedBox(height: 40),
              _buildButton("Continue", Colors.blue, Colors.white, isBottom: true),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPasswordField(String label) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 5),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
            hintText: "Enter a strong password",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildButton(String text, Color bgColor, Color textColor, {bool isBottom = false}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: isBottom ? 10.0 : 0),
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
