import UIKit

struct Poster {
    // 구조체를 인스턴스로 생성해야만, 그 인스턴스를 통해서 image 프로퍼티에 접근 가능
    var image: UIImage = UIImage(named: "star") ?? UIImage()
    
    init() {
        print("poster Init")
    }
}

var one = Poster()
var two = Poster()
var three = Poster()


