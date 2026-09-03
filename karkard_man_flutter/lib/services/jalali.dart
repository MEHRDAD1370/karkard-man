class Jalali {
  static String fromDate(DateTime g) {
    final gy=g.year, gm=g.month, gd=g.day;
    final md=[0,31,28,31,30,31,30,31,31,30,31,30,31];
    final gy2=gm>2?gy+1:gy;
    var days=355666+365*gy+((gy2+3)~/4)-((gy2+99)~/100)+((gy2+399)~/400)+gd;
    for(var i=0;i<gm;i++) days+=md[i];
    var jy=-1595+33*(days~/12053); days%=12053;
    jy+=4*(days~/1461); days%=1461;
    if(days>365){jy+=(days-1)~/365; days=(days-1)%365;}
    final jm=days<186?1+days~/31:7+(days-186)~/30;
    final jd=1+(days<186?days%31:(days-186)%30);
    return '${jy.toString().padLeft(4,'0')}/${jm.toString().padLeft(2,'0')}/${jd.toString().padLeft(2,'0')}';
  }
}
