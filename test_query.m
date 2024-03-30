function test_suite = test_query
    % Initialize the test suite
    import matlab.unittest.TestSuite;
    test_suite = TestSuite.fromFolder('tests');

function testQuery(testCase)
    % Test the query function
    inputString = 'hello world';
    expectedOutput = 'HELLO WORLD';
    import matlab.unittest.constraints.IsEqualTo;
    import matlab.unittest.TestCase;
    testCase.verifyThat(query(inputString), IsEqualTo(expectedOutput));
