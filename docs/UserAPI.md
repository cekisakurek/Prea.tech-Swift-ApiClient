# UserAPI

All URIs are relative to *http://prea.tech/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authenticate**](UserAPI.md#authenticate) | **POST** /authenticate | Authentication end point
[**register**](UserAPI.md#register) | **POST** /register | Register a user


# **authenticate**
```swift
    open class func authenticate(user: User, completion: @escaping (_ data: Token?, _ error: Error?) -> Void)
```

Authentication end point

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let user = User(name: "name_example", email: "email_example", password: "password_example") // User | email and password is required

// Authentication end point
UserAPI.authenticate(user: user) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user** | [**User**](User.md) | email and password is required | 

### Return type

[**Token**](Token.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **register**
```swift
    open class func register(user: User, completion: @escaping (_ data: Token?, _ error: Error?) -> Void)
```

Register a user

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let user = User(name: "name_example", email: "email_example", password: "password_example") // User | name email and password

// Register a user
UserAPI.register(user: user) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user** | [**User**](User.md) | name email and password | 

### Return type

[**Token**](Token.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

