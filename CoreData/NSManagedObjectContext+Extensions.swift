import CoreData

extension NSManagedObjectContext {
	/**
		Returns the counted number of results for the given fetch request. Returns 0 if the request fails.
	
		:param: fetchRequest The fetch request to count the results for.
	
		:returns: The number of results for the request.
	*/
	func resultsCountForRequest(fetchRequest: NSFetchRequest) -> Int {
		var error: NSError?
		let count = self.countForFetchRequest(fetchRequest, error: &error)
		
		if let e = error {
			println("Error returning results count: \(e). \(e.userInfo)")
			return 0
		}
		
		return count
	}
	
	/**
		Returns all the results for the given fetch request. Returns an empty array if the request fails.
	
		:param: fetchRequest The fetch request to return the results for.
	
		:returns: All the results for the given fetch request.
	*/
	func resultsForRequest(fetchRequest: NSFetchRequest) -> [AnyObject] {
		var error: NSError?
		let results = self.executeFetchRequest(fetchRequest, error: &error)
		
		if let e = error {
			println("Error fetching results: \(e). \(e.userInfo)")
			return []
		}
		
		return results
	}
	
	/**
		Returns a single result for the given fetch request. Returns nil if the request fails.
	
		:param: fetchRequest The fetch request to return the result for.
	
		:returns: A single result for the given fetch request.
	*/
	func resultForRequest(fetchRequest: NSFetchRequest) -> AnyObject? {
		fetchRequest.fetchLimit = 1
		var error: NSError?
		
		let results = self.executeFetchRequest(fetchRequest, error: &error)
		
		if let e = error {
			println("Error fetching result: \(e). \(e.userInfo)")
			return nil
		}
		
		if results.count != 1 {
			return nil
		}
		
		return results[0]
	}
	
	/**
		Returns the given object from the current context from it's managed object ID.
	
		:param: managedObject The managed object to return in the current context.
		
		:returns: The given managed object in the current context.
	*/
	func getObject(managedObject: NSManagedObject) -> AnyObject {
		return self.objectWithID(managedObject.objectID)
	}
}
