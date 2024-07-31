import 'package:flutter/material.dart';

import '../drawer_web.dart';

import 'package:flutter/material.dart';

class Webview extends StatefulWidget {
  const Webview({Key? key}) : super(key: key);

  @override
  State<Webview> createState() => _WebviewState();
}

class _WebviewState extends State<Webview> {
  final formKey = GlobalKey<FormState>();
  bool isCheck = false;

  void checkBoxToggle(bool value) {
    setState(() {
      isCheck = value;
    });
  }

  void handleSubmit() {
    if (formKey.currentState?.validate() ?? false) {
      print("Form is valid, submitting...");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Column(
        children: [
       NavigationBarWeb(),

          Row(
            children: [
              Expanded(
                flex: 6,
                child: _buildLeft(), 
              ),
              Flexible(
                flex: 4,
                child: Form(
                  key: formKey,
                  child: Container(
                    margin: const EdgeInsets.all(16),
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      color: Colors.yellowAccent,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
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
                        const SizedBox(height: 16),
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
                        const SizedBox(height: 16),
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: "Enter Email",
                            hintText: "Email",
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter Email';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 16),
                        CheckboxListTile(
                          controlAffinity: ListTileControlAffinity.leading,
                          value: isCheck,
                          onChanged: (value) {
                            checkBoxToggle(value ?? false);
                          },
                          title: const Text(
                            "I agree to the terms and conditions",
                          ),
                        ),
                        CheckboxListTile(
                          controlAffinity: ListTileControlAffinity.leading,
                          value: isCheck,
                          onChanged: (value) {
                            checkBoxToggle(value ?? false);
                          },
                          title: const Text("I want to receive updates"),
                        ),
                        ElevatedButton(
                          onPressed: handleSubmit,
                          child: const Text("Submit"),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


Widget _buildLeft() {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start, 
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(
                left: 24,
              ),
              child: Text(
                "Vehicle insurance\nthat is right for you.",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 5),
             Padding(
           padding: const EdgeInsets.only(
                left: 24,
              ),
               child: Container(
                 padding: const EdgeInsets.all(8),

                 width: 600,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.blue.withOpacity(0.5),
                ),
                child:  const Row(
                  children: [
                    Icon(
                      Icons.emoji_events_outlined,
                      size: 30,
                      color: Colors.amber,
                    ),
                    
                    SizedBox(width: 10),
                        Column(
                     mainAxisAlignment: MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.start,
                
                     children: [
                       Text("Award from Consumers Asia’s Most Trusted Brand",      style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),),
                       Text("Asia’s Most Trusted Brand \n 2022 – General Insurance",      style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),),
                     ],
                        )
                        
                        
                     
                     
                     
                  ],
                ),
                           ),
             )
          ]),
    ),
  );
}
