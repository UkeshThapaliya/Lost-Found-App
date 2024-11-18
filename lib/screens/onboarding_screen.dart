import 'package:flutter/material.dart';
import 'package:lost_found_app/config/colors.dart';
import 'signup_screen.dart';

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Placeholder for image
              Container(
                height: 300,
                color: Colors.white,
                child: Center(
                    child: Image.asset('assets/images/onboarding_pic.jpg')),
              ),
              const SizedBox(height: 20),
              Container(
                height: 200,
                color: Colors.white,
                child: Center(
                    child: Image.asset('assets/images/Onboarding_gif.gif')),
              ),
              const SizedBox(height: 8),
              Text(
                " SAMAN HARAYO ?\nAABA BHETINXA",
                style: TextStyle(
                    fontSize: 30,
                    color: AppColors.primary,
                    fontFamily: "Lato",
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 50),

              Text(
                maxLines: 1,
                "BHETAKO MAAL GOJI MA NAHAL",
                style: Theme.of(context).textTheme.bodyLarge,
              ),

              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUpScreen()),
                  );
                },
                child: Text(
                  "Get Started",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppColors.textPrimaryLightColor),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
