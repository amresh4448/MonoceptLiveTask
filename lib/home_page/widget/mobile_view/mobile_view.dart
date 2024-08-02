import 'package:flutter/material.dart';

class MobileView extends StatefulWidget {
  const MobileView({super.key});

  @override
  State<MobileView> createState() => _MobileViewState();
}

class _MobileViewState extends State<MobileView> {
  final test = <String>["car_Insurance", "Bike Insurance"];
  final formKey = GlobalKey<FormState>();
  bool isCheck1 = false;
  bool isCheck2 = false;

  void checkBoxToggle1(bool? value) {
    setState(() {
      isCheck1 = value ?? false;
    });
  }

  void checkBoxToggle2(bool? value) {
    setState(() {
      isCheck2 = value ?? false;
    });
  }

  void handleSubmit() {
    if (formKey.currentState?.validate() ?? false) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Form is valid and submitted')),
      );
    } else {
      // Form is not valid
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please fix the errors in the form')),
      );
    }
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                         const SizedBox(height: 20),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Vehicle Number Registration",
                    hintText: "MH022",
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                         const SizedBox(height: 20),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Enter Mobile",
                    hintText: "Mobile",
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Mobile';
                    }
                    return null;
                  },
                ),
                         const SizedBox(height: 20),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Email",
                    hintText: "example@example.com",
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Email';
                    }
                    final emailRegExp = RegExp(r'^[^\s@]+@[^\s@]+\.[^\s@]+$');
                    if (!emailRegExp.hasMatch(value)) {
                      return 'Please enter a valid email';
                    }
                    return null;
                  },
                ),
                         const SizedBox(height: 20),
                CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  value: isCheck1,
                  onChanged: checkBoxToggle1,
                  title: const Text("I agree to the terms and conditions", style: TextStyle(fontSize: 12),),
                ),
                CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  value: isCheck2,
                  onChanged: checkBoxToggle2,
                  title: const Text("Asia’s Most Trusted Brand \n 2022 - General Insurance", style: TextStyle(fontSize: 12),),
                ),

       const SizedBox(height: 24),
                SizedBox(
                  width: 200,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: handleSubmit,
                    child: const Text("Submit"),
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
