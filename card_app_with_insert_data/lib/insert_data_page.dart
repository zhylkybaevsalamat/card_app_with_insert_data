import 'package:flutter/material.dart';
import 'package:karta/home_page.dart';

class InsertDataPage extends StatelessWidget {
  InsertDataPage({super.key});

  final nameLastNameCtl = TextEditingController();
  final jobCtl = TextEditingController();
  final telePhoneNumberCtl = TextEditingController();
  final emailCtl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Insert Data Page"),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
            ),
            child: Column(
              children: [
                TextFormField(
                  controller: nameLastNameCtl,
                  decoration: const InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xff056C5C),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xff056C5C),
                      ),
                    ),
                    border: OutlineInputBorder(),
                    labelText: 'First and last name',
                    labelStyle: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ),
                const SizedBox(
                  height: 14,
                ),
                TextFormField(
                  controller: jobCtl,
                  decoration: const InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff056C5C),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff056C5C),
                        ),
                      ),
                      hintText: 'Job',
                      hintStyle: TextStyle(fontSize: 16, color: Colors.black)),
                ),
                const SizedBox(
                  height: 14,
                ),
                TextFormField(
                  controller: telePhoneNumberCtl,
                  decoration: const InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xff056C5C),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xff056C5C),
                      ),
                    ),
                    labelText: 'Telephone number',
                    labelStyle: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ),
                const SizedBox(
                  height: 14,
                ),
                TextFormField(
                  controller: emailCtl,
                  decoration: const InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xff056C5C),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xff056C5C),
                      ),
                    ),
                    hintText: 'E-mail',
                    hintStyle: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ),
                const SizedBox(
                  height: 46,
                  width: 160,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (nameLastNameCtl.text.isNotEmpty &&
                        jobCtl.text.isNotEmpty &&
                        telePhoneNumberCtl.text.isNotEmpty &&
                        emailCtl.text.isNotEmpty) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(
                            nameLastName: nameLastNameCtl.text,
                            job: jobCtl.text,
                            telePhoneNumber: telePhoneNumberCtl.text,
                            email: emailCtl.text,
                          ),
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Fill all the blanks!'),
                        ),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff056C5C),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  child: const Text(
                    'Save',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
