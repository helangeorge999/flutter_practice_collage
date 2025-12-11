// import 'package:flutter/material.dart';
// import 'package:flutter_for_college/screens/employee_details_screen.dart';
// import 'listview_screen.dart';
// import 'gridview_screen.dart';
// import 'cardview_screen.dart';
// import 'stack_layout_screen.dart';
// import 'my_stack_layout_screen.dart';
// // import 'bottom_navigation_screen.dart';

// class DashboardScreen extends StatelessWidget {
//   const DashboardScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//             colors: [Colors.deepPurple.shade400, Colors.deepPurple.shade800],
//           ),
//         ),
//         child: SafeArea(
//           child: Column(
//             children: [
//               const SizedBox(height: 40),
//               const Text(
//                 'Dashboard',
//                 style: TextStyle(
//                   fontSize: 36,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.white,
//                   letterSpacing: 1.5,
//                 ),
//               ),
//               const SizedBox(height: 10),
//               const Text(
//                 'Choose an option below',
//                 style: TextStyle(fontSize: 16, color: Colors.white70),
//               ),
//               const SizedBox(height: 60),
//               Expanded(
//                 child: SingleChildScrollView(
//                   padding: const EdgeInsets.symmetric(
//                     horizontal: 20.0,
//                     vertical: 10.0,
//                   ),
//                   child: Column(
//                     children: [
//                       _buildDashboardCard(
//                         context,
//                         title: 'ListView',
//                         subtitle: 'Explore list view examples',
//                         icon: Icons.list_rounded,
//                         gradient: LinearGradient(
//                           colors: [Colors.blue.shade400, Colors.blue.shade600],
//                         ),
//                         onTap: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => const ListViewScreen(),
//                             ),
//                           );
//                         },
//                       ),
//                       const SizedBox(height: 20),
//                       _buildDashboardCard(
//                         context,
//                         title: 'GridView',
//                         subtitle: 'Explore grid view examples',
//                         icon: Icons.grid_view_rounded,
//                         gradient: LinearGradient(
//                           colors: [
//                             Colors.orange.shade400,
//                             Colors.orange.shade600,
//                           ],
//                         ),
//                         onTap: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => const GridViewScreen(),
//                             ),
//                           );
//                         },
//                       ),
//                       const SizedBox(height: 20),
//                       _buildDashboardCard(
//                         context,
//                         title: 'CardView',
//                         subtitle: 'Explore card view examples',
//                         icon: Icons.credit_card_rounded,
//                         gradient: LinearGradient(
//                           colors: [
//                             Colors.green.shade400,
//                             Colors.green.shade600,
//                           ],
//                         ),
//                         onTap: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => const CardViewScreen(),
//                             ),
//                           );
//                         },
//                       ),
//                       const SizedBox(height: 20),
//                       _buildDashboardCard(
//                         context,
//                         title: 'Stack Layout',
//                         subtitle: 'Explore stack layout examples',
//                         icon: Icons.layers_rounded,
//                         gradient: LinearGradient(
//                           colors: [Colors.pink.shade400, Colors.pink.shade600],
//                         ),
//                         onTap: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => const StackLayoutScreen(),
//                             ),
//                           );
//                         },
//                       ),
//                       const SizedBox(height: 20),
//                       _buildDashboardCard(
//                         context,
//                         title: ' My Stack Layout',
//                         subtitle: 'My Stack Layout examples',
//                         icon: Icons.layers_rounded,
//                         gradient: LinearGradient(
//                           colors: [
//                             const Color.fromARGB(255, 49, 6, 169),
//                             const Color.fromARGB(255, 11, 21, 215),
//                           ],
//                         ),
//                         onTap: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => const StackLayoutScreen(),
//                             ),
//                           );
//                         },
//                       ),
//                       // const SizedBox(height: 20),
//                       // _buildDashboardCard(
//                       //   context,
//                       //   title: 'BottoMNavigation',
//                       //   subtitle: 'See my Bottom Navigations examples here',
//                       //   icon: Icons.grid_view_rounded,
//                       //   gradient: LinearGradient(
//                       //     colors: [
//                       //       const Color.fromARGB(255, 192, 150, 89),
//                       //       const Color.fromARGB(255, 189, 152, 108),
//                       //     ],
//                       //   ),
//                       //   onTap: () {
//                       //     Navigator.push(
//                       //       context,
//                       //       MaterialPageRoute(
//                       //         builder: (context) => const GridViewScreen(),
//                       //       ),
//                       //     );
//                       //   },
//                       // ),
//                       const SizedBox(height: 20),
//                       _buildDashboardCard(
//                         context,
//                         title: 'Employee Details',
//                         subtitle: 'View the Details of employers',
//                         icon: Icons.layers_rounded,
//                         gradient: LinearGradient(
//                           colors: [
//                             const Color.fromRGBO(144, 86, 106, 1),
//                             const Color.fromARGB(255, 184, 167, 173),
//                           ],
//                         ),
//                         onTap: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) =>
//                                   const EmployeeDetailsScreen(),
//                             ),
//                           );
//                         },
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildDashboardCard(
//     BuildContext context, {
//     required String title,
//     required String subtitle,
//     required IconData icon,
//     required Gradient gradient,
//     required VoidCallback onTap,
//   }) {
//     return InkWell(
//       onTap: onTap,
//       borderRadius: BorderRadius.circular(20),
//       child: Container(
//         width: double.infinity,
//         padding: const EdgeInsets.all(20),
//         decoration: BoxDecoration(
//           gradient: gradient,
//           borderRadius: BorderRadius.circular(20),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black.withOpacity(0.3),
//               blurRadius: 15,
//               offset: const Offset(0, 8),
//             ),
//           ],
//         ),
//         child: Row(
//           children: [
//             Container(
//               padding: const EdgeInsets.all(16),
//               decoration: BoxDecoration(
//                 color: Colors.white.withOpacity(0.2),
//                 borderRadius: BorderRadius.circular(15),
//               ),
//               child: Icon(icon, size: 40, color: Colors.white),
//             ),
//             const SizedBox(width: 20),
//             Expanded(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     title,
//                     style: const TextStyle(
//                       fontSize: 24,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                     ),
//                   ),
//                   const SizedBox(height: 5),
//                   Text(
//                     subtitle,
//                     style: const TextStyle(fontSize: 14, color: Colors.white70),
//                   ),
//                 ],
//               ),
//             ),
//             const Icon(
//               Icons.arrow_forward_ios_rounded,
//               color: Colors.white,
//               size: 24,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_for_college/screens/bottom_screen/about_screen.dart';
import 'package:flutter_for_college/screens/bottom_screen/cart_screen.dart';
import 'package:flutter_for_college/screens/bottom_screen/home_screen.dart';
import 'package:flutter_for_college/screens/bottom_screen/profile_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const CartScreen(),
    const ProfileScreen(),
    const AboutScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],

      appBar: AppBar(
        title: const Text('Dashboard'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 105, 191, 233),
      ),

      body: _screens[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black87,

        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.white70,

        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },

        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'Cart',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_mail),
            label: 'About',
          ),
        ],
      ),
    );
  }
}
