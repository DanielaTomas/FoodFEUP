import 'package:intl/intl.dart';

enum DayOfWeek {
  monday,
  tuesday,
  wednesday,
  thursday,
  friday,
  saturday,
  sunday
}
int getCurrDayInt() {
  final DateTime now = DateTime.now();
  final DateFormat formatter = DateFormat('EEEE');
  final String formatted = formatter.format(now);
  switch(formatted) {
    case "Monday":
      return 1;
      break;
    case "Tuesday":
      return 2;
      break;
    case "Wednesday":
      return 3;
      break;
    case "Thursday":
      return 4;
      break;
    case "Friday":
      return 5;
      break;
    case "Saturday":
      return 6;
      break;
    case "Sunday":
      return 7;
      break;
    default:
      print(formatted);
  }
  return -1;
}


DayOfWeek parseDayOfWeek(String str){
  str = str.replaceAll(' ', '').toLowerCase();
  if(str == 'segunda-feira') {
    return DayOfWeek.monday;
  } else if(str == 'terça-feira') {
    return DayOfWeek.tuesday;
  } else if(str == 'quarta-feira' ) {
    return DayOfWeek.wednesday;
  } else if(str == 'quinta-feira') {
    return DayOfWeek.thursday;
  } else if(str == 'sexta-feira') {
    return DayOfWeek.friday;
  } else if(str == 'sábado' || str == 'sabado') {
    return DayOfWeek.saturday;
  } else if(str == 'domingo') {
    return DayOfWeek.sunday;
  } else {
    return null;
  }
}

String toString(DayOfWeek day){
  switch(day){
    case DayOfWeek.monday:
      return 'Segunda-feira';
    case DayOfWeek.tuesday:
      return 'Terça-feira';
    case DayOfWeek.wednesday:
      return 'Quarta-feira';
    case DayOfWeek.thursday:
      return 'Quinta-feira';
    case DayOfWeek.friday:
      return 'Sexta-feira';
    case DayOfWeek.saturday:
      return 'Sábado';
    case DayOfWeek.sunday:
      return 'Domingo';
  }
  return null;
}