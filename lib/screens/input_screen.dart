import 'package:flutter/material.dart';
import 'package:navigasi/models/item.dart';

class InputScreen extends StatefulWidget {
  final Function(Item) onAddItem;

  const InputScreen({super.key, required this.onAddItem});

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  final TextEditingController
 _nameController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tambah Barang')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),

        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(labelText:
              'Nama Barang'
              ),
            ),
            TextField(
              controller: _priceController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Harga'),

            ),
            ElevatedButton(
              onPressed: () {
                final newItem = Item(
                  name: _nameController.text,
                  price: int.parse(_priceController.text),
                );
                widget.onAddItem(newItem);
                Navigator.pop(context);
              },
              child: const Text('Tambah'),
            ),
          ],
        ),
      ),
    );
  }
}