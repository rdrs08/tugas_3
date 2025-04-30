import 'package:flutter/material.dart';

class ProfilScreen extends StatelessWidget {
  const ProfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Profil Afiq")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Gambar Profil
            ClipOval(
              child: Image.asset(
                'images/afiq.jpg',
                width: 120,
                height: 120,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return const Icon(
                    Icons.image_not_supported,
                    size: 120,
                    color: Colors.grey,
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            // Nama
            const Text(
              'Afiq Muhammad Nur Marzuki',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),

            // Tentang Diri
            const Text(
              'Developer Flutter | Penggemar Teknologi | Senang Berbagi Ilmu',
              style: TextStyle(fontSize: 16, color: Colors.grey),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),

            // Email
            const Text('Email: afiq@gmail.com', style: TextStyle(fontSize: 16)),
            const SizedBox(height: 30),

            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Kembali'),
            ),
          ],
        ),
      ),
    );
  }
}
