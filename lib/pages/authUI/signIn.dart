import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: screenHeight * 0.03,
            right: 0,
            child: Image.asset(
              'images/fl.png',
              width: 100,
              height: 100,
            ),
          ),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Logo in center
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 22.0),
                    child: Image.asset(
                      'images/log.png',
                      width: 200,
                      height: 200,
                    ),
                  ),
                ),
              
                
                      const Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 32.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      const Text(
                        'Sign in to continue',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                const SizedBox(height: 30.0),
                // Email field inside a circular border
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    border: Border.all(
                      color: Colors.grey.shade300,
                    ),
                    color: const Color(0xFFF4DDD5), // Couleur #f4ddd5
                  ),
                  child: TextFormField(
                    controller: emailController,
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      hintText: 'Enter your email',
                      prefixIcon: Icon(Icons.email, color: Colors.black),
                      hintStyle: TextStyle(
                        color: Colors.black,
                    ),
                    labelStyle: TextStyle(
                      color: Colors.black,
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    ),
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),

                const SizedBox(height: 16.0),

                // Password field inside a circular border
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    border: Border.all(
                      color: Colors.grey.shade300,
                    ),
                    color: const Color(0xFFF4DDD5), // Couleur #f4ddd5
                  ),
                  child: TextFormField(
                    controller: passwordController,
                    decoration: const InputDecoration(
                      labelText: 'Password',
                      hintText: 'Enter your password',
                      prefixIcon: Icon(Icons.lock, color: Colors.black),
                      hintStyle: TextStyle(
                        color: Colors.black,
                    ),
                    labelStyle: TextStyle(
                      color: Colors.black,
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    ),
                    obscureText: true,
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),

                const SizedBox(height: 16.0),
                // Login button with circular border and black background color
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle login logic here
                    },
                    // ignore: sort_child_properties_last
                    child: const Text('LOGIN'),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(screenWidth * 0.4),
                      ),
                      // ignore: deprecated_member_use
                      primary: Colors.black,
                      minimumSize: Size(screenWidth * 0.8, 50.0),
                    ),
                  ),
                ),

                // Three icons for social authentication
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        // Handle Facebook authentication logic here
                      },
                      icon: Image.asset('images/Facebook_icon.svg', width: 50, height: 50),
                    ),
                    IconButton(
                      onPressed: () {
                        // Handle Google authentication logic here
                      },
                      icon: Image.asset('images/Google_icon.svg', width: 50, height: 50),
                    ),
                    IconButton(
                      onPressed: () {
                        // Handle Mac authentication logic here
                      },
                      icon: Image.asset('images/Mac_icon.png', width: 80, height: 80),
                    ),
                  ],
                ),
                const SizedBox(height: 10.0),
                const Text(
                        'Forget Password',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 3.0),
                      const Text(
                        'Sign up !',
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
