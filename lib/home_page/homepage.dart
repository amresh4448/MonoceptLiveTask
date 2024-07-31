import 'package:flutter/material.dart';
import 'widget/drawer.dart';
import 'widget/mobile_view/mobile_view.dart';
import 'widget/web_view.dart/web_view.dart';

class ICICHOmePage extends StatefulWidget {
  const ICICHOmePage({super.key});

  @override
  State<ICICHOmePage> createState() => _ICICHOmePageState();
}

class _ICICHOmePageState extends State<ICICHOmePage> {
  final test = <String>["car_Insurance", "Bike Insurance"];
  final formKey = GlobalKey<FormState>();
  bool isCheck = false;

   void checkBoxToggle() {
     setState(() {
       isCheck = !isCheck;
     });
   }
    

   @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:    MediaQuery.of(context).size.width > 600 ? null :  CustomDrawer(),
      appBar: MediaQuery.of(context).size.width > 600 ? AppBar(
        title: const Text('ICICI Bank'),
      backgroundColor: Colors.white,
      ) :
      
      AppBar(
                title: const Text('ICICI Bank'),

       flexibleSpace: Container(
             decoration: const BoxDecoration(
                gradient: 
                LinearGradient(
                  colors: [Colors.orange, Colors.red],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
      ),
      ),
      body: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth > 600) {
          return const Webview();
        
        } else {
          return  const  Padding(
           padding:  EdgeInsets.all(16),          

          child: MobileView(),
          );
        
        }
      
            
      
      }),
    );
  }
}





