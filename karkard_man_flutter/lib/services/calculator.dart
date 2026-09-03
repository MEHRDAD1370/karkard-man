import '../models/models.dart';
class DayCalc {final int presence,late,early,rawOvertime,deduction,payableOvertime; DayCalc(this.presence,this.late,this.early,this.rawOvertime,this.deduction,this.payableOvertime);}
class Calculator {
  static int m(String s){final p=s.split(':').map(int.parse).toList();return p[0]*60+p[1];}
  static int start(String shift,String type){if(type=='ستادی')return 450;if(shift=='صبح')return 420;if(shift=='عصر')return 900;return 1380;}
  static int end(String shift,String type){if(type=='ستادی')return 960;if(shift=='صبح')return 930;if(shift=='عصر')return 1410;return 450;}
  static DayCalc calc(Attendance a,Profile p){if(a.entry==null||a.exit==null)return DayCalc(0,0,0,0,0,0);var e=m(a.entry!),x=m(a.exit!);if(p.shift=='شب'&&x<e)x+=1440;var s=start(p.shift,p.type),f=end(p.shift,p.type);if(p.shift=='شب')f+=1440;final pres=x-e,late=e>s?e-s:0,early=x<f?f-x:0,raw=x>f?x-f:0,ded=late+early;return DayCalc(pres,late,early,raw,ded,(raw-ded).clamp(0,100000));}
}
