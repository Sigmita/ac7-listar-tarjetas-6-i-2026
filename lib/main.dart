import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // FONDO DE LA APP (Azul elegante profundo)
        backgroundColor: const Color(0xFF0A0E21), 
        
        // --- CÓDIGO DEL APPBAR ANTERIOR ---
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text(
            'Netflix',
            style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          leading: const Icon(Icons.movie_filter, color: Colors.white),
          actions: [
            IconButton(icon: const Icon(Icons.search, color: Colors.white), onPressed: () {}),
            IconButton(icon: const Icon(Icons.cast, color: Colors.white), onPressed: () {}),
            IconButton(icon: const Icon(Icons.account_box, color: Colors.blue), onPressed: () {}),
          ],
        ),

        // --- CÓDIGO DEL BODY CON LAS 4 TARJETAS ---
        body: ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            _tarjetaElegante(
              'Stranger Things', 
              'Temporada 4 - Ya disponible', 
              'https://raw.githubusercontent.com/Sigmita/imagenes-para-flutter-6to-I-1-feb-2026/refs/heads/main/stranger%20things.jpg'
            ),
            _tarjetaElegante(
              'The Witcher', 
              'Fantasía oscura y épica', 
              'https://raw.githubusercontent.com/Sigmita/imagenes-para-flutter-6to-I-1-feb-2026/refs/heads/main/the%20witcher.jpg'
            ),
            _tarjetaElegante(
              'Bridgerton', 
              'Romance y alta sociedad', 
              'https://raw.githubusercontent.com/Sigmita/imagenes-para-flutter-6to-I-1-feb-2026/refs/heads/main/bridgerton.jpg'
            ),
            _tarjetaElegante(
              'Cobra Kai', 
              'Acción y artes marciales', 
              'https://raw.githubusercontent.com/Sigmita/imagenes-para-flutter-6to-I-1-feb-2026/refs/heads/main/cobra%20kai1.jpg'
            ),
          ],
        ),
      ),
    );
  }

  // Función para crear las tarjetas de forma limpia
  Widget _tarjetaElegante(String titulo, String subtitulo, String urlImagen) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16.0),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 10,
            offset: const Offset(0, 5), // Difuminado hacia abajo
          ),
        ],
      ),
      child: Card(
        // Color azul grisáceo elegante
        color: const Color(0xFF1D1E33), 
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          leading: CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage(urlImagen),
          ),
          title: Text(
            titulo,
            style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            subtitulo,
            style: const TextStyle(color: Colors.white70, fontSize: 13),
          ),
          trailing: const Icon(
            Icons.favorite, 
            color: Colors.white, // Icono de Like blanco
          ),
        ),
      ),
    );
  }
}