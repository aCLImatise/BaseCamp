version 1.0

task RunTest {
  command <<<
    runTest
  >>>
  output {
    File out_stdout = stdout()
  }
}