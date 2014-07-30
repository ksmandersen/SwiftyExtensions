import Foundation

extension Array {
	var first: T? {
		if isEmpty {
			return nil
		}
		
		return self[startIndex]
	}
	
	var last: T? {
		if isEmpty {
			return nil
		}
		
		return self[endIndex - 1]
	}
}