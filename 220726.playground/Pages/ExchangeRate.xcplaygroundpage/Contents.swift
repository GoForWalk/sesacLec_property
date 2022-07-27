import UIKit
import Foundation

struct ExchangeRate {
    
    var usd: Double {
        didSet {
            print("USD: KRW: \(usd * currencyRate)원 -> \(usd)달러로 환전되었음.")
        }
    }
    var currencyRate: Double {
        didSet {
            print("currentRate: 환율이 \(oldValue)에서 \(currencyRate)으로 변경되었습니다.")
        }
    }
    var krw: Double {
        get {
            return usd * currencyRate
        }
        set {
            usd = newValue / currencyRate
        }
    }
    
}

var bank1 = ExchangeRate(usd: 1.0, currencyRate: 1100.0)
bank1.krw = 50000
bank1.currencyRate = 1350
bank1.krw = 50000
bank1.krw
