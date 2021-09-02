Using Namespace Microsoft.PowerShell.Commands

class WebRequest {
    WebRequest() {

    }
    [string]CallWeb() {
        [BasicHtmlWebResponseObject]$response = `
            Invoke-WebRequest -Uri 'https://jsonplaceholder.typicode.com/todos/1'
        return $response.Content
    }
}