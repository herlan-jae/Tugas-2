import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text('Contact List',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            ContactCardList(name: 'Herlan Jaelani'),
            ContactCardList(name: 'Muhammad Fakhrur Rizal'),
            ContactCardList(name: 'Trisno Tria Nurahman'),
            ContactCardList(name: 'Hasan Sadili Epni'),
            ContactCardList(name: 'Novana'),
            ContactCardList(name: 'Najwa Shafikah'),
            ContactCardList(name: 'Naily Syaroya'),
            ContactCardList(name: 'Rakha Shidqi Wirawan'),
            ContactCardList(name: 'La Nesta Farelyo'),
            ContactCardList(name: 'Mahdi Nurshubi Ashshahih'),
            ContactCardList(name: 'Maaseya Sardin'),
            ContactCardList(name: 'Aji Prakoso'),
            ContactCardList(name: 'Arasywana Beshaib'),
            ContactCardList(name: 'Jansen Yudha Pratama'),
            ContactCardList(name: 'Mochamad Heru Hidayat'),
            ContactCardList(name: 'Ihza Yoga Hadyputra'),
            ContactCardList(name: 'Yohannes Budhy Andryanto'),
            ContactCardList(name: 'Syahril Hidayat'),
            ContactCardList(name: 'Matius Eliezer Sinaga'),

          ],
        ),
      ),
      floatingActionButton: const MyFloatingActionButton(),
    );
  }
}

class ContactCardList extends StatelessWidget {
  final String name;
  
  const ContactCardList({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Card.outlined(
      child: ListTile(
        leading: const Icon(Icons.account_circle_rounded),
        title: Text(name, style: const TextStyle(fontSize: 16.0),),
      ),
    );
  }
}

class MyFloatingActionButton extends StatelessWidget {
  const MyFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        foregroundColor: Colors.white,
        backgroundColor: Colors.blueAccent,
        tooltip: 'Tambah kontak baru',
        onPressed: (){
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Tambah kontak baru'),
              duration: Duration(seconds: 1),
            ),
          );
        },
        child: const Icon(Icons.add));
  }
}

