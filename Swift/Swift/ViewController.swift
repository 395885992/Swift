//
//  ViewController.swift
//  Swift
//
//  Created by 猪窝科技IOS on 2020/5/6.
//  Copyright © 2020 猪窝科技. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
                
        //        let 常量
        //        var 变量
        //        var string : String
        //        string = "你好世界"
                
        //        常量赋值后不可更改！
                
                let hello = "hello word!"
                let 你好 = "你好世界!"
                let 🐶🐂 = "你好世界!"
                print(hello,你好,🐶🐂)
                
                print("打印结果",hello)
                print("打印结果",hello,你好)
                print("打印结果\(hello)\(你好)")
            
        //        let minValue = UInt16.min
        //        let maxValue = UInt16.max
        //        print(minValue,maxValue)
                

                // e 用于10 进制 e表示为10 e1表示10的一次方 e2表示10的二次方以次类推
                let numbers1 = 1.25e2
                let numbers2 = 1.25e-2
                print("\n",numbers1,numbers2)
                
        //        p用于16进制,其中0xf表示15
        //        p表示为2 p1表示为2的1次方 p2表示2的二次方依次类推
                
                let exponent1 = 0xfp2
                let exponent2 = 0xfp-2
                print(exponent1,exponent2)
                

                //所有这些浮点文字的十进制值为12.1875
                let exponentDouble = 1.21875e3
                print(exponentDouble)
                let hexadecimalDouble = 0xC.3p0
                print(hexadecimalDouble)
                
        //        数字可以包含下划线格式 可以提高可读性
                let oneMillion = 1_000_000
                let paddedDouble = 000.1_000_000_2
                print(oneMillion,paddedDouble)
                
                
        //        浮点和整数类型转换 类型的转换 如果没有添加类型是违法的不允许的
        //        同样浮点转整数也必须明确
                let three = 3
                let point = 0.1415;
                let pi = Double(three) + point
                print(pi);
                let intPi = Int(pi)
                print(intPi)
                
                
                //类型别名
        //        typealias 是用来为已经存在的类型重新定义名字的，通过命名，可以使代码变得更加清晰。
                typealias audioSample = UInt16;
                let maxAmplitudeFound  = audioSample.min
                let num:audioSample = 1
                
                print(maxAmplitudeFound,num)
                
                
        //        布尔类型 true / false

                let isY = true
                let isN = false
                
                let num1 = 10
                let num2 = 20
                let isEq = num1 > num2 ? true : false
                print(isY,isN,isEq)
                
        //        swift 的类型安全性可防止将非布尔类型替换为Bool
                
                let i = 1
                
                /**
                if i {
                    
                    // this example will not compile, and will report an error
                }
                */
                
                if i == 1 {
                    // this example will compile successfully
                }
                
                
                //元组
                //元组可以将多个值分组复合为一个值。元组中的值可以是任何类型
                let http404Error = (404,"Not Found")
                print(http404Error)
                //可以将元组的内容分解为单独的常量或变量，然后像往常一样访问它们
                let (fist,last) = http404Error
                print(fist,last)
                print(http404Error.0,http404Error.1)
                
                //如果只需要一些元组的值，则_在分解元组时，请用下划线（）忽略元组的某些部分
                let (_,justTheStatusCode) = http404Error
                print("the status code is  \(justTheStatusCode)")
            
                
                
                //定义元组可以命名元组中的各个元素
                let http200Status = (statusCode:200,description:"OK")
                print(http200Status.statusCode)
                
                
                
                func abc()->(Int,Int,String){
                    return (3,5,"carl")
                }
                
                func d()->(Int){
                    return (3)
                }
                
                let (a1,a2,a3) = abc()
             
                let (d1,d2) = (abc(),d())
                
                
                print(a1,a2,a3)
                print(d1,d2)
             

                
                
                var c1 = 5
                var c2 = 6
                (c1,c2) = (c2,c1)
                
                
                
                
                
                //由于初始化程序可能会失败，因此它返回一个optional Int而不是一个Int。可选Int内容写为Int?，而不是Int。问号表示它包含的值是可选的，这意味着它可能包含某个 Int值，或者可能根本不包含任何值。（它不能包含其他任何内容，例如Bool值或String值。它可以是Int，也可以完全不包含任何内容。）
                let string = "123"
                let conver = Int(string)
                print(conver)
                
                
                //可以通过为可选变量分配特殊值来将其设置为无值状态nil
                var serverResponseCode: Int? = 404
                serverResponseCode = nil
                
                
                
                //定义可选变量，不提供默认值系统会自动设置为nil
                //swift 中的 nil 与 Objective-c 中的nil不同，在OC中nil是指向不存在对象的指针 在swift中nil不是指针，而是缺少值的某种类型
                var surveyAnswer: String?
                print(surveyAnswer)
                
                
                
                //swfit 中判断nil
                let isNill = surveyAnswer != nil ? false : true
                print(isNill)

              
                
             
                
                /**
                此代码可以读取为：
                “如果Intby所返回的可选Int(possibleNumber)内容包含一个值，请为该可选内容所包含的值设置一个新的常量actualNumber。”
                如果转换成功，则该actualNumber常量可在if语句的第一分支中使用。它已经被初始化与包含在值内可选的，因此没有必要使用!后缀来访问它的价值。在此示例中，actualNumber仅用于打印转换结果。
                您可以将常量和变量与可选绑定一起使用。如果要操作语句actualNumber的第一个分支内的值if，可以改写，然后将可选中包含的值用作变量而不是常量。if var actualNumber
                */
                
                let possibleNumber = "123"
                let convertedNumber = Int(possibleNumber)
                print(convertedNumber)
               if let actualNumber = Int(possibleNumber) {
                    print("The string \"\(possibleNumber)\" has an integer value of \(actualNumber)")
                } else {
                    print("The string \"\(possibleNumber)\" could not be converted to an integer")
                }
                    
                if let fistNumber = Int("4"),let secondNumber = Int("42"), fistNumber < secondNumber && secondNumber < 100 {
                    
                    print(true)
                }else{
                    
                    print(false)
                }
                
                
                //隐式可选
                //隐式可选的常量和变量是允许无值的 可以使用if语句检查值是否存在
                
           
                let number = Int("")
                 print(number)
                if let number2 = number {
                    
                    print(number2)
                }else{
                    print(number)
                }
    }


}

