version 1.0

task RunMultiTest {
  command <<<
    runMultiTest
  >>>
  output {
    File out_stdout = stdout()
  }
}