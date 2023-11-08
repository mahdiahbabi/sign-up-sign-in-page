import 'package:event_book_app/gen/assets.gen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool iswitched = false;
  late bool obscureText ;
  late bool obscureConfirmText ;
  @override
  void initState() {
   
    super.initState();
    obscureText = true;
    obscureConfirmText = true;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar() ,
        body: SingleChildScrollView(
          child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text('Sign up',
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
            child:  const TextField(
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
                  'Full name',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ),
          ),
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
            child:  const TextField(
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
            child:  TextField(
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
                suffixIcon: IconButton(onPressed: (){

                  setState(() {
                    obscureText = !obscureText;
                  });
                }, icon: Icon(
                  obscureText== true ?
                  CupertinoIcons.eye
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
            child:  TextField(
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
                suffixIcon: IconButton(onPressed: (){

                  setState(() {
                    obscureConfirmText = !obscureConfirmText;
                  });
                }, icon: Icon(
                  obscureConfirmText== true ?
                  CupertinoIcons.eye
                  : CupertinoIcons.eye_slash,
                  )),
                
                label: const Text(
                  'Confirm password',
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
              child: SizedBox(
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
                    const Text('Remember Me '),
                  ],
                ),
              ),
            ),
            TextButton(
                onPressed: () {
                  showsnac(context, 'for reset password call programmer');
                },
                child: const Text('Forgot Password ?'))
          ],
                  ),
                  Padding(
          padding: const EdgeInsets.all(12.0),
          child: ElevatedButton(
            
              onPressed: () {},
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
                    'sign up'.toUpperCase(),
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(fontSize: 16),
                  ),
                  const SizedBox(
                    width: 90,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      CupertinoIcons.arrow_right,
                      color: Colors.white,
                    ),
                  ),
                ],
              )),
                  ),
                  Container(
            alignment: Alignment.center,
            child: const Text(
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
                SizedBox(
                    height: 40, width: 30, child: Assets.img.google.image()),
                const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text('sign up with Google'),
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
                const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text('sign up with Facebook'),
                ),
              ],
            ),
          ),
                  ),
                  Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Already have an account?'),
            TextButton(onPressed: (){
              setState(() {
                  Navigator.of(context).pushReplacement(CupertinoPageRoute(builder: (context) =>  const SignupScreen(),));
              });
            }, child: const Text('Sign in'),),
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
    duration: const Duration(milliseconds: 900),
    backgroundColor: Colors.blue.shade700,
  ));
}
