import 'package:flutter/material.dart';

class ModifPerfil extends StatelessWidget {
  const ModifPerfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF3B5998),
        title: const Text(
          'Mi información de contacto',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Encabezado con fondo azul y texto blanco
          // Contenido scrollable
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Mi información de contacto',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Esta información es privada a menos que intercambiemos información de contacto con alguien.',
                    style: TextStyle(fontSize: 13),
                  ),
                  const SizedBox(height: 20),

                  // Campos de texto
                  _buildTextField('Numero de telefono'),
                  _buildTextField('Numero de celular'),
                  _buildTextField('Correo'),
                  _buildTextField('Direccion'),
                  _buildTextField('LinkedIn'),

                  const SizedBox(height: 30),

                  // Botón guardar
                  Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF3966CC),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 40,
                          vertical: 12,
                        ),
                      ),
                      onPressed: () {
                        // Acción al guardar
                      },
                      child: const Text(
                        'Guardar',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Widget para los campos de texto
  Widget _buildTextField(String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextField(
        decoration: InputDecoration(
          labelText: label,
          border: const OutlineInputBorder(),
        ),
      ),
    );
  }
}
