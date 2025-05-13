import 'package:flutter/material.dart';

import 'main_navigator.dart';
import 'modif_perfil.dart';

class PerfilScreen extends StatelessWidget {
  const PerfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF3B5998),
        leading: Stack(
          alignment: Alignment.topRight,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PerfilScreen()),
                );
              },
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.black12,
                      child: Icon(Icons.person, color: Colors.white),
                    ),
                  ),
                  Positioned(
                    right: 6,
                    top: 6,
                    child: Container(
                      width: 10,
                      height: 10,
                      decoration: const BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        title: const Text(
          'Perfil',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FilterChip(
                label: const Text("Todo"),
                selected: false,
                onSelected: (_) {},
              ),
              FilterChip(
                label: const Text("Recomendado"),
                selected: true,
                selectedColor: Colors.black45,
                onSelected: (_) {},
              ),
            ],
          ),
          const Divider(height: 30),
          ListTile(
            leading: const CircleAvatar(
              radius: 30,
              child: Icon(Icons.person, size: 30),
            ),
            title: const Text(
              'Mi perfil',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            trailing: IconButton(
              icon: const Icon(Icons.edit),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (_) => const ModifPerfil()),
                );
              },
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Text(
              'Recomendaciones',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          _recomButton('Agregar localidad'),
          _recomButton('Agregar afiliacion'),
          _recomButton('Agregar intereses'),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 3, // Perfil
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        onTap: (index) => navigateToPage(context, index),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Agenda',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.group), label: 'Asistentes'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notificación',
          ),
        ],
      ),
    );
  }

  Widget _recomButton(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 6),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF3B5998),
        ),
        onPressed: () {},
        child: Text(text, style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
