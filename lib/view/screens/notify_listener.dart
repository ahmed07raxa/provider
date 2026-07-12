import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NotifyListener extends StatelessWidget {
  NotifyListener({super.key});
  TextEditingController passwordController = TextEditingController();

  final ValueNotifier<int> _count = ValueNotifier<int>(0);
  final ValueNotifier<bool> _toggle = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('NOTIFY LISTENSER')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ValueListenableBuilder(
                  valueListenable: _count,
                  builder: (context, value, child) {
                    return Text(
                      'Your Count Value Is : ${_count.value.toString()}',
                      style: TextStyle(fontSize: 30),
                    );
                  },
                ),
              ],
            ),
            SizedBox(height: 40),
            ValueListenableBuilder(
              valueListenable: _toggle,
              builder: (context, value, child) {
                return TextField(
                  controller: passwordController,
                  obscureText: _toggle.value,
                  decoration: InputDecoration(
                    suffixIcon: GestureDetector(
                      onTap: () {
                        _toggle.value = !_toggle.value;
                      },
                      child: Icon(
                        _toggle.value ? Icons.visibility_off : Icons.visibility,
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _count.value++;
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
