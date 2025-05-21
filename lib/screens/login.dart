import 'package:first_flutter/constants/route.constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  static const instagramUrl = 'https://instagram.com';
  static const facebookUrl = 'https://facebook.com';
  static const linkedinUrl = 'https://linkedin.com';
  static const twitterUrl = 'https://twitter.com';
  static bool showLoginSection = true;
  static bool isLoading = false;
  final loginFormKey = GlobalKey<FormState>();

  launchSocialUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }

  onSignUpPress() {
    setState(() {
      showLoginSection = !showLoginSection;
    });
  }

  handleLogin() async {
    if (loginFormKey.currentState!.validate()) {
      setState(() {
        isLoading = true;
      });
      await Future.delayed(const Duration(seconds: 2));

      if (!mounted) return;
      await Navigator.pushNamed(context, MyRoutes.home);
      setState(() {
        isLoading = false;
        showLoginSection = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/login-banner.jpg', height: 300),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              padding: EdgeInsets.symmetric(vertical: 12),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color.fromARGB(255, 1, 81, 122),
                  width: 0.5,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Text(
                      "Welcome to E-Kart",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 1, 81, 122),
                      ),
                    ),
                    SizedBox(height: 24),
                    Form(
                      key: loginFormKey,
                      child: Column(
                        children: [
                          TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Username can not be empty!";
                              }
                            },
                            decoration: InputDecoration(
                              labelText: 'Username',
                              hintText: 'Enter your username',
                            ),
                          ),
                          SizedBox(height: 20),
                          TextFormField(
                            obscureText: true,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Password can not be empty!";
                              } else if (value.length < 6) {
                                return "Password should be of length 6 atleast!";
                              }
                            },
                            decoration: InputDecoration(
                              labelText: 'Password',
                              hintText: 'Enter your password',
                            ),
                          ),
                          if (!showLoginSection)
                            TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                labelText: 'Confirm Password',
                                hintText: 'Enter your password',
                              ),
                            ),
                          SizedBox(height: 8),
                          if (showLoginSection)
                            Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                'Forgot Password?',
                                style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    ElevatedButton(
                      onPressed: handleLogin,
                      child:
                          isLoading
                              ? const SizedBox(
                                width: 20,
                                height: 26,
                                child: CircularProgressIndicator(
                                  color: Colors.white,
                                  strokeWidth: 2,
                                ),
                              )
                              : Text(
                                showLoginSection ? "Login" : "Sign Up",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 1, 81, 122),
                        foregroundColor: Colors.white,
                        padding: EdgeInsets.all(16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        elevation: 5,
                        minimumSize: Size(double.infinity, 50),
                      ),
                    ),
                    SizedBox(height: 12),
                    RichText(
                      text: TextSpan(
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w800,
                          color: Colors.black,
                        ),
                        children: [
                          TextSpan(
                            text:
                                showLoginSection
                                    ? "Don't have an account? "
                                    : "Do have an account? ",
                          ),
                          WidgetSpan(
                            child: GestureDetector(
                              onTap: onSignUpPress,
                              child: Text(
                                showLoginSection ? "Sign Up" : "Login",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 1, 81, 122),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 32),
            if (showLoginSection)
              Row(
                children: [
                  Expanded(
                    child: Divider(color: Color.fromARGB(255, 31, 82, 107)),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      "Sign In With",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w800,
                        color: Color.fromARGB(255, 1, 81, 122),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Divider(color: Color.fromARGB(255, 1, 81, 122)),
                  ),
                ],
              ),
            SizedBox(height: 24),
            if (showLoginSection)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () => launchSocialUrl(instagramUrl),
                    icon: FaIcon(
                      FontAwesomeIcons.instagram,
                      size: 36,
                      color: Color.fromARGB(255, 1, 81, 122),
                    ),
                  ),
                  SizedBox(width: 10),
                  IconButton(
                    onPressed: () => launchSocialUrl(facebookUrl),
                    icon: FaIcon(
                      FontAwesomeIcons.facebook,
                      size: 36,
                      color: Color.fromARGB(255, 1, 81, 122),
                    ),
                  ),
                  SizedBox(width: 10),
                  IconButton(
                    onPressed: () => launchSocialUrl(linkedinUrl),
                    icon: FaIcon(
                      FontAwesomeIcons.linkedinIn,
                      size: 36,
                      color: Color.fromARGB(255, 1, 81, 122),
                    ),
                  ),
                  SizedBox(width: 10),
                  IconButton(
                    onPressed: () => launchSocialUrl(twitterUrl),
                    icon: FaIcon(
                      FontAwesomeIcons.twitter,
                      size: 36,
                      color: Color.fromARGB(255, 1, 81, 122),
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
