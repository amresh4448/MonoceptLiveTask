import 'package:flutter/material.dart';
import '../utils/colors.dart';
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

  var list = ["Motot Insurance","Health Insurance","Tax Insurance","Travel insurance", "Corprate Insurance", "Other Insurance", "Corprate Insurance"];

   void checkBoxToggle() {
     setState(() {
       isCheck = !isCheck;
     });
     
   }
    

   @override
  void initState() {
    super.initState();
  }

  String? _selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:    MediaQuery.of(context).size.width > 600 ? null :  CustomDrawer(),
      appBar: MediaQuery.of(context).size.width > 600 ? AppBar(
        title: const Text('ICICI Bank'),
      backgroundColor: Colors.white,
      bottom: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: Container(
            height: 80,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              gradient: AppGradients.customGradient,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:List.generate(list.length, (i){
                     setState(() {
  
                      });
      return     PopupMenuButton<String>(
        constraints: const BoxConstraints(maxWidth: 500),
        popUpAnimationStyle: AnimationStyle(duration: const Duration(milliseconds: 200)),
       child:           Text(
            list[i].toString(),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
       ),
            onSelected: (value) {
              // Handle menu item selection here
              print('Selected: $value');
            },
            itemBuilder: (BuildContext context){
              return <PopupMenuEntry<String>>[
      


                ... List.generate(list.length, (i){
                return PopupMenuItem<String>(
                  value: list[i],
                  child: Text(list[i]),
                );
              }),
                      
              ];  
              
          });
      }),
          
            ),
          ),
        ),
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






