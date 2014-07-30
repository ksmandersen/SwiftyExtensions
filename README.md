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
*/
func addRelationshipObject(value: NSManagedObject, relationshipName: String) -> Void
```

```swift
/**
	Returns a new managed object with the given entity name in the given 
	managed object context.
*/
class func createWithTypeInContext(entityName: String, context: NSManagedObjectContext) -> AnyObject
```

## NSManagedOjbectContext

```swift
/**
	Returns the counted number of results for the given fetch request. 
	Returns 0 if the request fails.
*/
func resultsCountForRequest(fetchRequest: NSFetchRequest) -> Int 
```

```swift
/**
	Returns all the results for the given fetch request. 
	Returns an empty array if the request fails.
*/
func resultsForRequest(fetchRequest: NSFetchRequest) -> [AnyObject] 
```

```swift
/**
	Returns a single result for the given fetch request. 
	Returns nil if the request fails.
*/
func resultForRequest(fetchRequest: NSFetchRequest) -> AnyObject?
```

```swift
/**
	Returns the given object from the current context from it's managed object ID.
*/
func getObject(managedObject: NSManagedObject) -> AnyObject
```

## NSFetchRequest

```swift
/**
	Returns a fetch request with a given entity name configured with the 
	optional parameters given.
*/
class func createFetchRequest(entityName: String, 
	predicate: NSPredicate? = nil, 
	sortDescriptor: NSSortDescriptor? = nil, 
	limit: Int = 0) -> NSFetchRequest
```
