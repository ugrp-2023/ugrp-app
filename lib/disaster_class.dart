import 'package:sqflite/sqflite.dart';

class Disaster {
  final int id;
  final String location;

  const Disaster({
    required this.id,
    required this.location,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'location': location,
    };
  }
}

class DisasterRepository {
  final Database _database;

  DisasterRepository(this._database);

  Future <bool> insertDisaster(Disaster disaster) async {
    // Check if the disaster with the same id already exists
    final List<Map<String, dynamic>> existingDisasters = await _database.query(
      'disasters',
      where: 'id = ?',
      whereArgs: [disaster.id],
    );

    if (existingDisasters.isEmpty) {
      // Insert the disaster if it doesn't exist
      await _database.insert(
        'disasters',
        disaster.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
      return true;
    }
    else { return false;}
  }

  Future<String?> getDisasterById(int id) async {
    final List<Map<String, dynamic>> disasters = await _database.query(
      'disasters',
      where: 'id = ?',
      whereArgs: [id],
    );

    if (disasters.isNotEmpty) {
      final Map<String, dynamic> disasterMap = disasters.first;
      return disasterMap['location'] as String;
    } else {
      return null;
    }
  }
}