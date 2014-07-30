import Foundation
import CoreData

extension NSManagedObject {
	/**
		Adds a managed object to a relationship of the current managed object. This method adds the managed object to the set of managed objects in the relationship while maintaining KVO-compliance.
	
		:param: value The managed object to add to the relationship.
		:param: relationshipName The name of the relationship.
	*/
	func addRelationshipObject(value: NSManagedObject, relationshipName: String) -> Void {
		let changedObjects = NSSet(object: value)
		self.willChangeValueForKey(
			relationshipName,
			withSetMutation: .UnionSetMutation,
			usingObjects: changedObjects
		)
		
		var primitiveEpisodes = self.primitiveValueForKey(relationshipName) as NSMutableSet
		
		primitiveEpisodes.unionSet(changedObjects)
		
		self.didChangeValueForKey(
			relationshipName,
			withSetMutation: .UnionSetMutation,
			usingObjects: changedObjects
		)
	}
	
	/**
		Returns a new managed object with the given entity name in the given managed object context.
	
		:param: entityName The name of the entity to create.
		:param: context The context in which to create the entity.
	
		:returns: A new managed object context inserted in the given context.
	*/
	class func createWithTypeInContext(entityName: String, context: NSManagedObjectContext) -> AnyObject {
		return NSEntityDescription.insertNewObjectForEntityForName(entityName, inManagedObjectContext: context)
	}
}