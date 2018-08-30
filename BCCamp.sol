pragma solidity ^0.4.18;

contract BCCamp {
    
// Declare variables that will store information of BlockChain mini boot camp students,
// this information includes name, age, 
// and if he/she is enjoying or not, 
//every student information should be bound with his/her ethereum account address.
     
    
// your code here
    struct student {
     string  stdName;
     uint  age;
     bool  isEnjoying;
     }
    mapping (address => student) students;
    address[] public studentsArr;
    
    function addStudent(address _address, uint _age, string name, bool _isEnjoying) public {
       // your code here
       var std = students[_address];
       std.age = _age;
       std.stdName = name;
       std.isEnjoying = _isEnjoying;
       studentsArr.push(_address)-1;
       }



    // build getStudents() function
    
    function getStudents() public view returns (address[]) {
       return studentsArr;
   }

    // build getStudent(address _address) function
    function getStudent(address stu) view public returns (uint, string, bool) {
        return (students[stu].age, students[stu].stdName, students[stu].isEnjoying);
    }



    // build countStudents() function
    function countStudents() view public  returns(uint){
        
        return studentsArr.length;
    }
    
}
