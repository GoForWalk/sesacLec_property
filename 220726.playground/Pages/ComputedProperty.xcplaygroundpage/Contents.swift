import UIKit

// 인스턴스 생성 여부와 상관없이 타입 프로퍼티 값은 하나다!!

struct User {
    
    static var originalName = "RealName" // Type Stored Property
    
    static func getOriginName() -> String {
        return originalName
    }
    
    var nickName = "Owen" // Instance Stored Property

}

var user1 = User()
user1.nickName = "Olaf"
User.originalName = "ReJACK"
print(user1.nickName, User.originalName)

var user2 = User()
print(user2.nickName, User.originalName)

var user3 = User()
print(user3.nickName, User.originalName)

var user4 = User()
print(user4.nickName, User.originalName)

print(User.getOriginName())


// Computed Property ( Instacne Computed Property / Type Computed Property)

struct BMI {
    var nickName: String
    var weight: Double
    var height: Double
    
    // 저장 프로퍼티는 메모리 O, 연산 프로퍼티는 저장 프로퍼티를 활용해서 원하는 값을 반환하는 용도로 주로 사용
    var BMIResult: String {
        get {
            let bmiValue = (weight * weight) / height
            let bmiStatus = bmiValue < 18.5 ? "low weight" : "more than Standard"
            return bmiStatus
        }
        
    }
}

let bmi = BMI(nickName: "GoReBob", weight: 50, height: 180)

let value = bmi.BMIResult
print(value)

class FoodRestaurant {
    static let name = "JACKChicken"
    
    static var totalOrderCount = 10 {
        willSet { // 변경되기 직전
            print("총 주문건수가 \(totalOrderCount)에서 \(newValue)로 변경될 예정입니다.")
        }
        didSet { // 변경 되고난 직후에 실행
            print("총 주문건수가 \(oldValue)에서 \(totalOrderCount)로 변경되었습니다.")
        }
    }
    
    static var nowOrder: Int {
        get {
            return totalOrderCount * 5000
        }
        set {
            totalOrderCount += newValue
        }
    }
}


FoodRestaurant.nowOrder
FoodRestaurant.nowOrder = 20
FoodRestaurant.nowOrder



class Coffee {
    static var name = "Americano"
    static var shot = 2
    var price = 4900
    
    static func plusShot() {
        shot += 1
//        price += 300
    }
    
    class func minusShot() {
        shot -= 1
    }
}


class Latte: Coffee {
    
    static var milk = 1
    // static은 override 불가능
    
    
    // super class의 타입 메서드를 재정의 해서 쓰고 싶다면~~ class 키워드
    override class func minusShot() {
        shot -= 1
        milk += 1
    }
    
}

Latte.plusShot()
Latte.shot
