Using Module ./HelloWorld.psm1

Describe 'HelloWold' {
    Context 'When name is Fred' {
        It 'should return Hello, Fred!' {
            # Arrange
            [HelloWorld]$sut = [HelloWorld]::new('Fred')

            # Act
            [string]$response = $sut.GetHello()

            # Assert
            $response | Should -Be 'Hello, Fred!'
        }
    }
}

