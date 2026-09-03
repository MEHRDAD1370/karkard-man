import 'dart:convert';
import 'package:http/http.dart' as http;
import 'storage.dart';
class HolidayService {
  final Storage storage; HolidayService(this.storage);
  Future<Set<String>> sync(int year) async {
    final cached=await storage.loadHolidays();
    try {
      final r=await http.get(Uri.parse('https://date.nager.at/api/v3/PublicHolidays/$year/IR')).timeout(const Duration(seconds:8));
      if(r.statusCode==200){final d=jsonDecode(r.body) as List; final s=d.map((e)=>e['date'].toString()).toSet(); await storage.saveHolidays(s); return s;}
    } catch (_) {}
    return cached;
  }
}
