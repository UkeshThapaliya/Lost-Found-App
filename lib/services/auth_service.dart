import 'package:flutter/material.dart';

class AuthProvider with ChangeNotifier {
  bool isLoading = false;

  Future<void> login(String email, String password) async {
    isLoading = true;
    notifyListeners();

    try {
      // Simulated delay to represent network call
      await Future.delayed(Duration(seconds: 2));

      // Replace the following with your actual login API call
      if (email == "test@example.com" && password == "password123") {
        print("Login successful");
      } else {
        throw Exception("Invalid email or password");
      }
    } catch (error) {
      print("Error during login: $error");
      rethrow; // Re-throw error to handle it in the UI
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }

  Future<void> signUp(String name, String email, String password) async {
    // Simulate sign-up logic (replace with actual API call)
    try {
      isLoading = true;
      notifyListeners();

      await Future.delayed(Duration(seconds: 2)); // Simulated delay

      print("Sign-up successful for $email");
    } catch (error) {
      print("Error during sign-up: $error");
      rethrow; // Re-throw error to handle in UI
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }

  Future<void> resetPassword(String email) async {
    // Simulate password reset logic (replace with actual API call)
    try {
      isLoading = true;
      notifyListeners();

      await Future.delayed(Duration(seconds: 2)); // Simulated delay

      print("Password reset email sent to $email");
    } catch (error) {
      print("Error during password reset: $error");
      rethrow; // Re-throw error to handle in UI
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}
