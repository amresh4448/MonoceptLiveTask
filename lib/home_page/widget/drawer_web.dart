import 'package:flutter/material.dart';




class NavigationBarWeb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
             decoration: const BoxDecoration(
                gradient: 
                LinearGradient(
                  colors: [Colors.orange, Colors.red],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
      height: 100.0,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Expanded(
            child: Theme(
              data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
              child: ExpansionTile(
                leading: const Icon(Icons.directions_car),
                title: const Text(
                  'Motor Insurance',
                  style: TextStyle(color: Colors.white),
                ),
                children: <Widget>[
                  ListTile(
                    title: const Text('Motor Insurance',),
                    onTap: () => Navigator.pop(context),
                  ),
                  ListTile(
                    title: const Text('Car Insurance'),
                    onTap: () => Navigator.pop(context),
                  ),
                  ListTile(
                    title: const Text('Bike Insurance'),
                    onTap: () => Navigator.pop(context),
                  ),
                  ListTile(
                    title: const Text('Motor Floater'),
                    onTap: () => Navigator.pop(context),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Theme(
              data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
              child: ExpansionTile(
                leading: const Icon(Icons.health_and_safety),
                title: const Text('Health Insurance', 
                     style: TextStyle(color: Colors.white),
                ),
                children: <Widget>[
                  ListTile(
                    title: const Text('Option 1'),
                    onTap: () => Navigator.pop(context),
                  ),
                  ListTile(
                    title: const Text('Option 2'),
                    onTap: () => Navigator.pop(context),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Theme(
              data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
              child: ExpansionTile(
                leading: const Icon(Icons.travel_explore),
                title: const Text('Travel Insurance', 
                
                     style: TextStyle(color: Colors.white),
                ),
                children: <Widget>[
                  ListTile(
                    title: const Text('Option 1'),
                    onTap: () => Navigator.pop(context),
                  ),
                  ListTile(
                    title: const Text('Option 2'),
                    onTap: () => Navigator.pop(context),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Theme(
              data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
              child: ExpansionTile(
                leading: const Icon(Icons.business),
                title: const Text('SME Insurance', 
                
                     style: TextStyle(color: Colors.white),
                ),
                children: <Widget>[
                  ListTile(
                    title: const Text('Option 1'),
                    onTap: () => Navigator.pop(context),
                  ),
                  ListTile(
                    title: const Text('Option 2'),
                    onTap: () => Navigator.pop(context),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

