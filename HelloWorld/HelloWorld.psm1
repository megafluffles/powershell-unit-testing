class HelloWorld {
    hidden [string]$_yourName
    HelloWorld([string]$yourName) {
        $this._yourName = $yourName
    }
    hidden [string]GetHello() {
        return "Hello, $yourName!"
    }
}