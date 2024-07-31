import 'package:flutter/material.dart';



class CustomDrawer extends StatefulWidget {
  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {



  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: 
      
      ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const SizedBox(
            height: 100,
            child: DrawerHeader(
              decoration: BoxDecoration(
                gradient: 
                LinearGradient(
                  colors: [Colors.orange, Colors.red],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                  Icon(
                    Icons.close,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.phone),
            title: const Text('Call Back'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              
              Navigator.pop(context);
            },
          ),
          const Divider(),
          Theme(
                              data: Theme.of(context).copyWith(dividerColor: Colors.transparent),

            child: ExpansionTile(
              leading: const Icon(Icons.directions_car),
              title: const Text('Motor Insurance', style: TextStyle(color: Colors.orange)),
              children: <Widget>[
                ListTile(
                  title: const Text('Motor Insurance'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: const Text('Car Insurance'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: const Text('Bike Insurance'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: const Text('Motor Floater'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
          Theme(
                              data: Theme.of(context).copyWith(dividerColor: Colors.transparent),

            child: ExpansionTile(
              leading: const Icon(Icons.health_and_safety),
              title: const Text('Health Insurance'),
              children: <Widget>[
                ListTile(
                  title: const Text('Option 1'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: const Text('Option 2'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
          Theme(
                              data: Theme.of(context).copyWith(dividerColor: Colors.transparent),

            child: ExpansionTile(
              leading: Icon(Icons.travel_explore),
              title: const Text('Travel Insurance'),
              children: <Widget>[
                ListTile(
                  title: Text('Option 1'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text('Option 2'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
          Theme(
                  data: Theme.of(context).copyWith(dividerColor: Colors.transparent),

            child: ExpansionTile(
              leading: Icon(Icons.business),
              title: Text('SME Insurance'),
              children: <Widget>[
                ListTile(
                  title: Text('Option 1'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text('Option 2'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.corporate_fare),
            title: Text('Corporate Insurance'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    
    
    
    );
  }
}
