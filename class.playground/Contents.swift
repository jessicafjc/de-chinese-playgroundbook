//: Playground - noun: a place where people can play

import Foundation

print("Hello, World!")

//一、类的定义，属性和方法
//类是对具有相同特征和行为的事物的统称

//Person是类名
//相同特征可以用属性表示
//行为可以用方法表示
class Person {
    //属性
    //?表示默认初始值为空
    var name:String?
    
    var age:Int = 0
    
    //方法
    //setName是方法名
    //name是形参名
    //self表示当前对象
    func setName(name:String){
        self.name = name
    }
    
    
    //初始化方法
    //默认的初始化方法
     init(){
        
    }
    
}


//二、类的继承
//一个类型A可以继承另外一个类型B，A成为B的子类，B称为A的父类
//A:B 表示A继承B
class Teacher : Person {
    
    //属性
    var course:String?
    
    //方法
    //重新实现初始化方法(构造方法)
    //替代了默认的初始化方法
    //self表示当前对象
    //super是关键字，表示调用父类的属性或者方法
    init(course: String) {
        self.course = course
        
        //设置父类属性之前需要调用父类的初始化方法
        super.init()
        self.name = "张三"
    }
    
    
}


//使用类创建对象
//调用的是无参的构造方法
//创建对象
var p = Person()
p.setName(name: "李四")
print(p.name!)

//创建Teacher的对象
var t = Teacher(course: "数学")
t.setName(name: "王老师")
print(t.name!)
print(t.course!)

//定义一个学生类
class Student {
    //属性
    var name: String?
    
    //重新实现初始化方法
    //替代默认的初始化方法
    init(name:String){
        self.name = name
    }
    
}


//创建学生的对象
var s = Student(name: "小明")
print(s.name!)





