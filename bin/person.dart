abstract class Person{
  String name;
  String address;
  Person(this.name,this.address);
  String toStringPerson(){
    return '$name($address)';
  }
}