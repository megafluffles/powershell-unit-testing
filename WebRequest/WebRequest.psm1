class WebRequest {
    WebRequest() {

    }
    [string]CallWeb() {
        [Microsoft.PowerShell.Commands.BasicHtmlWebResponseObject]$response = `
            Invoke-WebRequest -Uri 'https://jsonplaceholder.typicode.com/todos/1'
        return $response.Content
    }
}