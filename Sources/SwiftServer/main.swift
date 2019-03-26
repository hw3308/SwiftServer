
import PerfectHTTP

import PerfectHTTPServer

// 注册您自己的路由和请求／响应句柄
var routes = Routes()

routes.add(method: .get, uri: "/path/test") { (request, response) in
    response.setHeader(.contentType, value: "application/json")
    let re:[String:Any] = ["code":200,"message":"成功啦!","data":[1,2,3,4,5]]
    _ = try? response.setBody(json: re)
        
        response.completed()
}


let server = HTTPServer()

do {
    // 启动HTTP服务器
    try HTTPServer.launch(
        .server(name: "www.example.ca", port: 8181, routes: routes))
} catch {
    fatalError("\(error)") // fatal error launching one of the servers
}


