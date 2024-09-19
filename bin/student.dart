import 'person.dart';

class Student extends Person{
  int numCourses;
  List<String> courses;
  List<int>grades;
  Student(String name,String address):super(name,address);
  @override
  String toStringPerson() {
    return "Students : ${super.toStringPerson()}";
  }
  void addCourseGrade(String course , int grade) {
    courses.add(course);
    grades.add(grade);
    numCourses++;
  }
  void printGrades(){
    for(int i=0;i<numCourses;i++){
      print("${courses[i]}=>${grades[i]}");
    }
  }
  double getAverageGrades(){
    double sum=0;
    for(int i=0; i<grades.length;i++){
      sum+=grades[i];
    }
    return sum/grades.length;
  }
}