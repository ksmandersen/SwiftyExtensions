# SwiftyExtensions

Somewhat useful extensions written in Swift

## Array

```swift
/// The first element in the array or nil if empty
var first: T? { get }
```

```swift
/// The last element in the array or nil if empty
var last: T? { get }
```

## NSManagedObject

```swift
/**
  Adds a managed object to a relationship of the current managed object. 
  This method adds the managed object to the set of managed objects in the 
  relationship while maintaining KVO-compliance.
	
  :param: value The managed object to add to the relationship.
  :param: relationshipName The name of the relationship.
*/
func addRelationshipObject(value: NSManagedObject, relationshipName: String) -> Void
```

```swift
/**
	Returns a new managed object with the given entity name in the given 
	managed object context.
	
	:param: entityName The name of the entity to create.
	:param: context The context in which to create the entity.
	
	:returns: A new managed object context inserted in the given context.
*/
class func createWithTypeInContext(entityName: String, context: NSManagedObjectContext) -> AnyObject
```
