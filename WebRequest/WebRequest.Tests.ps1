Using Module ./WebRequest.psm1
Using System.Net.Http

Describe 'WebRequest' {
    Context 'When response is Hello' {
        It 'should return Hello' {
            # Arrange
            Mock -ModuleName WebRequest Invoke-WebRequest { 
                [HttpResponseMessage]$responseMessage = [HttpResponseMessage]::new()
                $responseMessage.Content = 'Hello'
                [BasicHtmlWebResponseObject]$responseObject = [BasicHtmlWebResponseObject]::new($responseMessage)
                return $responseObject
            }
            [WebRequest]$sut = `
                [WebRequest]::new()

            # Act
            [string]$response = $sut.CallWeb()

            # Assert
            $response | Should -Be 'Hello'
        }
    }
}