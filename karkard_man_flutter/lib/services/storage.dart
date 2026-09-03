import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/models.dart';
class Storage {
  Future<SharedPreferences> get p=>SharedPreferences.getInstance();
  Future<Profile?> loadProfile() async {final x=await p; final s=x.getString('profile'); return s==null?null:Profile.fromJson(jsonDecode(s));}
  Future<void> saveProfile(Profile v) async {final x=await p; await x.setString('profile',jsonEncode(v.toJson()));}
  Future<List<Attendance>> loadAttendance() async {final x=await p; final s=x.getString('attendance'); return s==null?[]:(jsonDecode(s) as List).map((e)=>Attendance.fromJson(e)).toList();}
  Future<void> saveAttendance(List<Attendance> v) async {final x=await p; await x.setString('attendance',jsonEncode(v.map((e)=>e.toJson()).toList()));}
  Future<List<LeaveRecord>> loadLeaves() async {final x=await p; final s=x.getString('leaves'); return s==null?[]:(jsonDecode(s) as List).map((e)=>LeaveRecord.fromJson(e)).toList();}
  Future<void> saveLeaves(List<LeaveRecord> v) async {final x=await p; await x.setString('leaves',jsonEncode(v.map((e)=>e.toJson()).toList()));}
  Future<Set<String>> loadHolidays() async {final x=await p; return (x.getStringList('holidays')??[]).toSet();}
  Future<void> saveHolidays(Set<String> v) async {final x=await p; await x.setStringList('holidays',v.toList());}
}
