Using Module ./WebRequest.psm1

Describe 'WebRequest' {
    Context 'When response is Hello' {
        It 'should return Hello' {
            # Arrange
            Mock -ModuleName WebRequest Invoke-WebRequest { return 'Hello' }
            [WebRequest]$sut = `
                [WebRequest]::new()

            # Act
            [string]$response = $sut.CallWeb()

            # Assert
            $response | Should -Be 'Hello'
        }
    }
}