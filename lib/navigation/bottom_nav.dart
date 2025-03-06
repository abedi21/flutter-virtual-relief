import 'package:flutter/material.dart';
import '../screens/home/exercises_screen.dart';
import '../screens/home/progress_screen.dart';
import '../screens/home/physiotherapists_screen.dart';
import '../screens/home/profile_screen.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  _BottomNavScreenState createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    ExercisesScreen(),
    ProgressScreen(),
    PhysiotherapistsScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 20, // ✅ Increased blur for a floating effect
              spreadRadius: 5,
            ),
          ],
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(30),
          ), // ✅ More rounded look
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(30),
          ), // ✅ Increased roundness
          child: BottomNavigationBar(
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            selectedItemColor:
                Colors.orange.shade800, // ✅ Darker orange for better contrast
            unselectedItemColor:
                Colors.grey.shade500, // ✅ More visible inactive items
            showSelectedLabels: true, // ✅ Keep labels visible for clarity
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.fitness_center, size: 28),
                label: "Exercises",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.bar_chart, size: 28),
                label: "Progress",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.local_hospital, size: 28),
                label: "Therapists",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person, size: 28),
                label: "Profile",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
