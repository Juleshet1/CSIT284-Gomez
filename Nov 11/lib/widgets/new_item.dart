import 'package:flutter/material.dart';

class NewItem extends StatefulWidget {
  const NewItem({super.key});
  @override
  State<NewItem> createState() {
    return _NewItemState();
  }
}

class _NewItemState extends State<NewItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add New Item'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                maxLength: 50,
                decoration: InputDecoration(label: const Text('Name')),
                validator: (value){
                  if(value == null || value.trim().legnth <= 1){
                    return 'Name must be at least 2 characters long.';
                  }

                }
              ),
            ],
          ),
        ),
      ),
    );
  }
}