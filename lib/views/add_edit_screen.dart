import 'package:flutter/material.dart';
import 'package:notes_app/services/database_helper.dart';

import '../model/notes_model.dart';

class AddEditScreen extends StatefulWidget {
  final Note? note;
  const AddEditScreen({super.key, this.note});

  @override
  State<AddEditScreen> createState() => _AddEditScreenState();
}

class _AddEditScreenState extends State<AddEditScreen> {
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _contentController = TextEditingController();
  final DatabaseHelper _databaseHelper = DatabaseHelper();
  Color _selectedColor = Colors.amber;
  final List<Color> _colors = [
    Colors.amber,
    Colors.greenAccent,
    Colors.redAccent,
    Colors.blueAccent,
    Colors.indigo,
    Colors.purpleAccent,
    Colors.pinkAccent,
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if(widget.note != null){
      
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
