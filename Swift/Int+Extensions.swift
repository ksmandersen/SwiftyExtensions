import Foundation

extension Int {
	/// Returns true for even numbers and false for non-even
	var isEven: Bool {
		return self % 2 == 0
	}
	
	/// Returns true for odd numbers and false for non-odd
	var isOdd: Bool {
		return self % 2 != 0
	}
	
	/// Returns true for positive numbers (>= 0). Otherwise false
	var isPositive: Bool {
		return self >= 0
	}
	
	/// Returns true for negative numbers (<0). Otherwise false
	var isNegative: Bool {
		return self < 0
	}
}