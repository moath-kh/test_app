import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailcontroller = TextEditingController();
    var passcontroller = TextEditingController();
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Login',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: emailcontroller,
                onFieldSubmitted: (value) {
                  // ignore: avoid_print
                  print(value);
                },
                onChanged: (value) {
                  // ignore: avoid_print
                  print(value);
                },
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                    labelText: 'Email Adress',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email)),
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: passcontroller,
                onFieldSubmitted: (value) {
                  // ignore: avoid_print
                  print(value);
                },
                onChanged: (value) {
                  // ignore: avoid_print
                  print(value);
                },
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                decoration: const InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.remove_red_eye_outlined),
                    prefixIcon: Icon(Icons.lock)),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                color: Colors.blue,
                width: double.infinity,
                child: MaterialButton(
                  onPressed: () {
                    print(emailcontroller.text);
                    print(passcontroller.text);
                  },
                  child: Text(
                    'login'.toUpperCase(),
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  const Text('Don\t have an account '),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Register Now',
                        style: TextStyle(color: Colors.amber),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
