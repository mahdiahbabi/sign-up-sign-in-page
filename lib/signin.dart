import 'package:event_book_app/gen/assets.gen.dart';
import 'package:event_book_app/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  bool iswitched = false;
  late bool obscureText;
  @override
  void initState() {
    super.initState();
    obscureText = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 162,
              height: 114,
              child: Assets.img.splash.image(),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text('Sign in',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontSize: 24, color: Colors.black)),
        ),
        Padding(
          padding: const EdgeInsets.all(15),
          child: Container(
            decoration: BoxDecoration(
                // color: Colors.amber,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                )),
            height: 56,
            width: MediaQuery.of(context).size.width,
            child: const TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                icon: Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Icon(
                    CupertinoIcons.mail,
                    color: Colors.grey,
                  ),
                ),
                label: Text(
                  'abc@email.com',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 10, 15, 15),
          child: Container(
            decoration: BoxDecoration(
                // color: Colors.amber,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                )),
            height: 56,
            width: MediaQuery.of(context).size.width,
            child: TextField(
              obscureText: obscureText,
              decoration: InputDecoration(
                border: InputBorder.none,
                icon: const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Icon(
                    CupertinoIcons.lock,
                    color: Colors.grey,
                  ),
                ),
                suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        obscureText = !obscureText;
                      });
                    },
                    icon: Icon(
                      obscureText == true
                          ? CupertinoIcons.eye
                          : CupertinoIcons.eye_slash,
                    )),
                label: const Text(
                  'Your password',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Container(
                height: 30,
                width: 170,
                child: Row(
                  children: [
                    Switch(
                      value: iswitched,
                      onChanged: (value) {
                        setState(() {
                          iswitched = !iswitched;
                        });
                      },
                      activeColor: Colors.blue,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text('Remember Me '),
                  ],
                ),
              ),
            ),
            TextButton(
                onPressed: () {
                  showsnac(context, 'for reset password call programmer');
                },
                child: Text('Forgot Password ?'))
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(CupertinoPageRoute(builder: (context) => SignupScreen(),));
              },
              style: ElevatedButton.styleFrom(
                  elevation: 1,
                  shadowColor: Colors.grey,
                  backgroundColor: Theme.of(context).primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  )),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'sign in'.toUpperCase(),
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(fontSize: 16),
                  ),
                  const SizedBox(
                    width: 90,
                  ),
                  IconButton(
                    onPressed: () {
                        Navigator.of(context).push(CupertinoPageRoute(builder: (context) => SignupScreen(),));
                    },
                    icon: Icon(
                      CupertinoIcons.arrow_right,
                      color: Colors.white,
                    ),
                  ),
                ],
              )),
        ),
        Container(
            alignment: Alignment.center,
            child: Text(
              'OR',
              style: TextStyle(color: Colors.grey, fontSize: 16),
            )),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(

                // backgroundColor: Theme.of(context).primaryColor,
                shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    height: 40,
                    width: 30,
                    child: Assets.img.google.image()),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text('Login with Google'),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(

                // backgroundColor: Theme.of(context).primaryColor,
                shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    height: 40,
                    width: 30,
                    child: Assets.img.facebook.image()),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text('Login with Facebook'),
                ),
              ],
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Already have an account?'),
            TextButton(
              onPressed: () {},
              child: Text('Sign in'),
            ),
          ],
        )
      ],
    ),
      ),
    );
  }
}

String? showsnac(BuildContext context, message) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(message),
    duration: Duration(milliseconds: 900),
    backgroundColor: Colors.blue.shade700,
  ));
}
