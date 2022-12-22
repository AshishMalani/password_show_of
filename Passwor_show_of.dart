import 'package:flutter/material.dart';

class PasswordShowOf extends StatefulWidget {
  const PasswordShowOf({Key? key}) : super(key: key);

  @override
  State<PasswordShowOf> createState() => _PasswordShowOfState();
}

class _PasswordShowOfState extends State<PasswordShowOf> {
  int Value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        TextFormField(
          obscureText: Value != 0 ? false : true,
          validator: (value) {
            if (value!.isEmpty) {
              return 'This is required field';
            }
            return null;
          },
          decoration: InputDecoration(
            suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {});
                },
                child: IconButton(
                  icon: Value == 0
                      ? Icon(Icons.visibility, key: const ValueKey('icon1'))
                      : Icon(
                          Icons.visibility_off,
                          key: const ValueKey('icon2'),
                        ),
                  onPressed: () {
                    setState(() {
                      Value = Value == 0 ? 1 : 0;
                    });
                  },
                )),
            contentPadding: EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 15,
            ),
            hintText: 'Password',
            filled: true,
            fillColor: Color(0xffF5F6FA),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
      ]),
    );
  }
}
