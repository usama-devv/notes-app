import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper{
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  static Database? _database;

  factory DatabaseHelper() => _instance;
  DatabaseHelper._internal();

  Future<Database> get database async{
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async{
    String path = join(await getDatabasesPath(), 'my_notes.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }

  Future<void> _onCreate(Database db, int version) async{
    await db.execute('''
        CREATE TABLE notes(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        title TEXT,
        content TEXT,
        color TEXT,
        dateTime TEXT
        )
      ''');
  }
}