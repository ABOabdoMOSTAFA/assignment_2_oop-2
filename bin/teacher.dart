import 'person.dart';

class Teacher extends Person {
  int numCourse;
  List<String> courses=[];
  Teacher(String name, String address)
      : super(name, address);
  @override
  String toStringPerson() {
    return "teacher :${super.toStringPerson()}";
  }
bool checkCourse(String course_1,String course_2){
    if(course_1==course_2) return true;
    return false;
}
  bool addCourse(String course) {
    // courses.add(course);
    // for(int i=0;i<courses.length;i++){
    //   if(course==courses[i]){
    //     return true;
    //   }
    // }
    // return false;
    if(courses.contains(course)){
      return false;
    }else{
      courses.add(course);
      return true;
    }
  }
  bool removeCourse(String course) {
  //   for(int i=0;i<courses.length;i++){
  //     if(course==courses[i]){
  //      courses.remove(course);
  //      return true;
  //     }
  //   }
  //   return false;
  // }
    if(courses.contains(course)){
      courses.remove(course);
      print("removed succfully");
      return true;
    }else{
      return false;
    }
  }
}
void main(){
  Teacher teacher =Teacher("Abdo", "AinShames");
  print(teacher.addCourse("flutter"));
  print(teacher.removeCourse("flutter"));
}
