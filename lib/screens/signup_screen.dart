import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lost_found_app/config/colors.dart';
import 'package:lost_found_app/screens/login_screen.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _isPasswordVisible = false; // For the password field
  bool _isConfirmPasswordVisible = false; // For the confirm password field

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 40),
              const Text(
                "Create Account",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: AppColors.tertiary,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                "Let's Start!",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 24),
              Container(
                height: 360, // Adjusted height for better fit
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildTextField("Full Name"),
                    _buildTextField("Email or Mobile Number"),
                    _buildPasswordField(
                      "Password",
                      _isPasswordVisible,
                      () => setState(() {
                        _isPasswordVisible = !_isPasswordVisible;
                      }),
                    ),
                    _buildPasswordField(
                      "Confirm Password",
                      _isConfirmPasswordVisible,
                      () => setState(() {
                        _isConfirmPasswordVisible = !_isConfirmPasswordVisible;
                      }),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: "By continuing, you agree to\n ",
                  style: const TextStyle(
                      fontSize: 14, color: AppColors.dividerColor),
                  children: [
                    TextSpan(
                      text: "Terms of Use",
                      style: const TextStyle(
                        color: AppColors.tertiary,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const TextSpan(
                      text: " and ",
                    ),
                    TextSpan(
                      text: "Privacy Policy",
                      style: const TextStyle(
                        color: AppColors.tertiary,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  // Add sign-up logic here
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                  backgroundColor: AppColors.tertiary,
                ),
                child: const Text(
                  "Sign Up",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'lato',
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                "or sign up with",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: AppColors.dividerColor),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // IconButton(
                  //   onPressed: () {

                  //   },
                  //   icon: const Icon(
                  //     Icons.report_gmailerrorred,
                  //     size: 60,
                  //     color: Colors.black,
                  //   ),
                  // ),

                  GestureDetector(
                    onTap: null,
                    child: Image.asset(
                      'assets/images/google_icon.png',
                      height: 32,
                      width: 32,
                    ),
                  ),

                  const SizedBox(width: 24),
                  IconButton(
                    onPressed: () {
                      // Add Facebook sign-up logic
                    },
                    icon: const Icon(
                      Icons.facebook,
                      size: 40,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(width: 16),
                  IconButton(
                    onPressed: () {
                      // Add fingerprint sign-up logic
                    },
                    icon: const Icon(
                      Icons.fingerprint,
                      size: 40,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account?",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: AppColors.dividerColor),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                    child: const Text(
                      "Log in",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: AppColors.tertiary,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String label) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 2),
        TextFormField(
          decoration: InputDecoration(
            labelText: label,
            labelStyle: const TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.normal,
              fontSize: 16.0,
            ),
            filled: true,
            fillColor: Colors.white,
            floatingLabelBehavior: FloatingLabelBehavior.never,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide.none,
            ),
            hintStyle: TextStyle(
              fontWeight: FontWeight.normal,
              color: Colors.grey,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Colors.grey.shade300),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                color: Colors.transparent,
              ),
            ),
          ),
          style: const TextStyle(
              color: Colors.grey, fontWeight: FontWeight.normal),
        ),
      ],
    );
  }

  Widget _buildPasswordField(
      String label, bool isVisible, VoidCallback toggleVisibility) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 2),
        TextFormField(
          obscureText: !isVisible,
          decoration: InputDecoration(
            labelText: label,
            labelStyle: const TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.normal,
              fontSize: 16.0,
            ),
            filled: true,
            fillColor: Colors.white,
            floatingLabelBehavior: FloatingLabelBehavior.never,
            suffixIcon: IconButton(
              icon: Icon(
                isVisible ? Icons.visibility : Icons.visibility_off,
                color: AppColors.tertiary,
              ),
              onPressed: toggleVisibility,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Colors.grey.shade300),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
                color: Colors.transparent,
              ),
            ),
          ),
          style: const TextStyle(color: Colors.grey),
        ),
      ],
    );
  }
}
