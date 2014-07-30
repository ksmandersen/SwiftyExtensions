import Foundation

extension Array {
	/// The first element in the array or nil if empty
	var first: T? {
		if isEmpty {
			return nil
		}
		
		return self[startIndex]
	}
	
	/// The last element in the array or nil if empty
	var last: T? {
		if isEmpty {
			return nil
		}
		
		return self[endIndex - 1]
	}
}