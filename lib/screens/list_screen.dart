import 'package:flutter/material.dart';
import 'package:navigasi/models/item.dart';
import 'package:navigasi/screens/input_screen.dart';


class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen>
 {
  final List<Item> _items
  = [];

  void _addItem(Item item) {
    setState(() {
      _items.add(item);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:
      const Text('Daftar Belanja')),
      body: ListView.builder(
        itemCount: _items.length,
        itemBuilder: (context, index) {
          final item = _items[index];
          return ListTile(
            title: Text(item.name), 

            trailing: Text('Rp ${item.price}'),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => InputScreen(onAddItem: 
              _addItem),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
