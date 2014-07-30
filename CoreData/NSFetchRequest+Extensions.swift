import CoreData

extension NSFetchRequest {
	/**
		Returns a fetch request with a given entity name configured with the optional parameters given.
	
		:param: entityname The name of the entity to fetch.
		:param: predicate Predicate used to filter the fetch request.
		:param: sortDescriptor Sort descriptor used to sort the fetch request.
		:param: limit Number of results to fetch. 0 means no limit,
	
		:returns: A fetch request configures to fetch the entity with the given parameters.
	*/
	class func createFetchRequest(entityName: String, predicate: NSPredicate? = nil, sortDescriptor: NSSortDescriptor? = nil, limit: Int = 0) -> NSFetchRequest {
		var request = NSFetchRequest(entityName: entityName)
		
		if let pred = predicate {
			request.predicate = pred
		}
		
		if let sort = sortDescriptor {
			request.sortDescriptors = [sort]
		}
		
		if limit > 0 {
			request.fetchLimit = limit
		}
		
		return request
	}
}