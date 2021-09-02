Using Module ./WebRequest.psm1
Using Namespace System.Net.Http
Using Namespace Microsoft.PowerShell.Commands

Describe 'WebRequest' {
    Context 'When response is Hello' {
        It 'should return Hello' {
            # Arrange
            Mock -ModuleName WebRequest Invoke-WebRequest { 
                [HttpResponseMessage]$responseMessage = [HttpResponseMessage]::new()

                $responseMessage.Content = [StringContent]::new('Hello')

                return [BasicHtmlWebResponseObject]::new($responseMessage)
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