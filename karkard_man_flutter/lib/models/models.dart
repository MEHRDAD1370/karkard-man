class Profile {
  String name, personnelNo, position, type, shift;
  int overtimeRate;
  Profile({required this.name, required this.personnelNo, required this.position, required this.type, required this.shift, required this.overtimeRate});
  Map<String,dynamic> toJson()=>{'name':name,'personnelNo':personnelNo,'position':position,'type':type,'shift':shift,'overtimeRate':overtimeRate};
  factory Profile.fromJson(Map<String,dynamic> j)=>Profile(name:j['name']??'',personnelNo:j['personnelNo']??'',position:j['position']??'',type:j['type']??'پرسنل',shift:j['shift']??'صبح',overtimeRate:j['overtimeRate']??1720000);
}
class Attendance {
  String date,jalaliDate,status; String? entry,exit; int? editedAt;
  Attendance({required this.date,required this.jalaliDate,this.entry,this.exit,this.status='normal',this.editedAt});
  Map<String,dynamic> toJson()=>{'date':date,'jalaliDate':jalaliDate,'entry':entry,'exit':exit,'status':status,'editedAt':editedAt};
  factory Attendance.fromJson(Map<String,dynamic> j)=>Attendance(date:j['date'],jalaliDate:j['jalaliDate']??'',entry:j['entry'],exit:j['exit'],status:j['status']??'normal',editedAt:j['editedAt']);
}
class LeaveRecord {
  String date,kind,note; int minutes;
  LeaveRecord({required this.date,required this.minutes,required this.kind,this.note=''});
  Map<String,dynamic> toJson()=>{'date':date,'minutes':minutes,'kind':kind,'note':note};
  factory LeaveRecord.fromJson(Map<String,dynamic> j)=>LeaveRecord(date:j['date'],minutes:j['minutes']??0,kind:j['kind']??'ساعتی',note:j['note']??'');
}
