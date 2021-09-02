Using Module ./WebRequest.psm1
Using Namespace Microsoft.PowerShell.Commands

Describe 'WebRequest' {
    Context 'When response is Hello' {
        It 'should return Hello' {
            # Arrange
            [WebRequest]$sut = [WebRequest]::new()

            # Act
            [string]$response = $sut.CallWeb()

            # Assert
            $response | Should -Be 'Hello'
        }
    }
}