String month(int n) {
  switch (n) {
    case 1:
      return "January";
    case 2:
      return "February";
    case 3:
      return "March";
    case 4:
      return "April";
    case 5:
      return "May";
    case 6:
      return "June";
    case 7:
      return "July";
    case 8:
      return "August";
    case 9:
      return "September";
    case 10:
      return "October";
    case 11:
      return "November";
    case 12:
      return "December";
    default:
      return "Month";
  }
}

String weekday(int n) {
  switch (n) {
    case 1:
      return "Monday";
    case 2:
      return "Tuesday";
    case 3:
      return "Wednesday";
    case 4:
      return "Thursday";
    case 5:
      return "Friday";
    case 6:
      return "Saturday";
    case 7:
      return "Sunday";
    default:
      return "Day";
  }
}

String getFormattedDate() {
  final now = DateTime.now();
  final day = now.day;
  final monthName = month(now.month);
  final weekdayName = weekday(now.weekday);
  return '$day $monthName, $weekdayName';
}
