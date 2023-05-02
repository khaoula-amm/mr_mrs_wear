import 'package:flutter/material.dart';

class CreateAccountPage extends StatefulWidget {
  const CreateAccountPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CreateAccountPageState createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
              width: MediaQuery.of(context).size.width,
              height: 250,
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          size: 20,
                          color: Colors.black,
                        ),
                        onPressed: () {},
                      ),
                      const SizedBox(width: 10),
                      Transform.translate(
                        offset: const Offset(0, -20),
                        child: Image.asset(
                          'images/log.png',
                          width: 200,
                          height: 200,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    color: Color(0xFFF4DDD5),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(70))),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const SizedBox(height: 10),
                          const Text(
                            'Create New \n Account',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 27,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            'Already registered? Login here',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          ),
                          const SizedBox(height: 10),
                          TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'Name',
                              labelStyle: TextStyle(
                              color: Colors.black,
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                              ),
                          ),
                          const SizedBox(height: 10),
                          TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'Email',
                              labelStyle: TextStyle(
                              color: Colors.black,
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                              ),
                          ),
                          const SizedBox(height: 10),
                          TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'Password',
                              labelStyle: TextStyle(
                              color: Colors.black,
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                              ),
                          ),
                          const SizedBox(height: 10),
                          TextFormField(
                            decoration:
                                const InputDecoration(
                                  labelText: 'Verify Password',
                                  labelStyle: TextStyle(
                                  color: Colors.black,
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                ),
                                  ),
                          ),
                          const SizedBox(height: 25),
                          ElevatedButton(
                            onPressed: () {},
                            // ignore: sort_child_properties_last
                            child: const Text('Sign Up'),
                            style: ElevatedButton.styleFrom(
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(50)),
                              ),
                              // ignore: deprecated_member_use
                              primary: Colors.black,
                              minimumSize: const Size(double.infinity, 50.0),
                            ),
                          ),
                          const SizedBox(height: 10),
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
            
                        ],
                      ),
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