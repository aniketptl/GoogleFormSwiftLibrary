//
//  GoogleFormLibrary.swift
//  FeedbackApp
//
//  Created by Aniket Patil on 15/10/16.
//  Copyright © 2016 Aniket Patil. All rights reserved.
//

import Foundation

public var googleForml: String!
public var entryData = NSDictionary()
public var postData : String! = ""
var data:String! = ""
var data2:String! = ""

public class GoogleForm
{
    
    
public func clear()
{
    postData = ""
    googleForml = ""
    
}
public func setGoogleFormLink(text:String)
{
    googleForml = text
    postData.appendContentsOf(text)
}

public func setNextFields(entry:String,value:String)
{
      data2 = "&"+entry+"="+value
      postData.appendContentsOf(data2)
}

public func sendToGoogleForm() -> Bool {
    
    let url = NSURL(string:googleForml)

    let request = NSMutableURLRequest(URL: url!)
    request.HTTPMethod = "POST"
    request.setValue("application/x-www-form-urlencoded; charset=utf-8", forHTTPHeaderField: "Content-Type")
    request.HTTPBody = postData.dataUsingEncoding(NSUTF8StringEncoding)
    _ = NSURLConnection(request: request, delegate: nil, startImmediately: true)
    
    return true
}
}
