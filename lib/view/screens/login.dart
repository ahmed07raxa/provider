import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/provider/auth_provider.dart';

class Login extends StatelessWidget {
  Login({super.key});
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  ValueNotifier<bool> toggle = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(hintText: 'Email'),
            ),
            SizedBox(height: 30),
            ValueListenableBuilder(
              valueListenable: toggle,
              builder: (context, value, child) {
                return TextFormField(
                  controller: passwordController,
                  obscureText: toggle.value,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    suffixIcon: GestureDetector(
                      onTap: () {
                        toggle.value = !toggle.value;
                      },
                      child: Icon(
                        toggle.value ? Icons.visibility_off : Icons.visibility,
                      ),
                    ),
                  ),
                );
              },
            ),
            SizedBox(height: 30),
            GestureDetector(
              onTap: () {
                authProvider.login(
                  emailController.text.toString(),
                  passwordController.text.toString(),
                );
              },
              child: Container(
                height: 56,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: authProvider.loading
                      ? CircularProgressIndicator()
                      : Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
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
