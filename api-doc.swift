

var postMan-Workspaces-url = "https://app.getpostman.com/join-team?invite_code=999d45a2ef146338fd633e8f61fa83a4&target_code=7437ec2e26bcc58646a0d55354391285"
var URL = ""

//you must greate driver befor login

//driver table
var endpointdriver= "/driver"// get - post
struct Driver {
    var id:UUID
    var name:String
    var phone:Int
    var photo:String
    
}

//customer table
var endpointcustomer= "/customer"//get - post
struct Customer {
    var id:UUID
    var name:String
    var address:String
    var coordinates:[Double]
    var note:String
    var categories: String
}

//login table (under maintainance)
var endpoint= "/login"
struct Login{
    var id:UUID
    var username:String
    var password:String
    var driverID: UUID
    
}

//packages table (under maintainance)
var endpointpackage= "/package",//for get supcific customer
                    "/package/id",
                    "package/id/customer"//for get supcific customer
struct Packages{

    var id:UUID
    var packageNo: Int
    var customerID: UUID
    let driverID:UUID

    
}


//progress table (under maintainance)

var endpointprogress= "/progress" //for get - post
var endpointprogress2= "/progress/driverID" //for delete-update
struct Progress{
    var id:UUID
    var totalPackagesArrived:Int
    var totalPackagesReturned:Int
    var updatedAt:Date
    let driverID:UUID

    
}