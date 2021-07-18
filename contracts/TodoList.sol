pragma solidity ^0.5.0;

contract TodoList {
    
    struct Task{
        uint id;
        string content;
        bool completed;
    }

    uint public taskCount = 0;
    mapping(uint => Task) public tasks;

    constructor() public {
        newTask("Do workout");
        newTask("Read book");
    }

    function newTask(string memory ct) public{
        Task memory newT = Task(++taskCount,ct,false);
        tasks[taskCount] = newT;
    } 

    function completeTask(uint _id) public {
        for (uint256 index = 0; index < taskCount; index++) {
            if(tasks[index].id == _id){
                tasks[index].completed = true;
                break;
            }
        }
    }
}