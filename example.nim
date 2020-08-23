import src/mike

get "/":
    send("hello")

get "/echo":
    # GET /echo?msg=hello
    # response: hello
    send(params["msg"])

post "/json":
    # POST /json body: {"msg": "hello"}
    let body = json()
    send(body["msg"].getStr())
    
post "/form":
    # POST /form body: msg=hello
    let form = form()
    send(form["msg"])

startServer()
