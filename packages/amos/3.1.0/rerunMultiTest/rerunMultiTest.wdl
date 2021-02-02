version 1.0

task RerunMultiTest {
  command <<<
    rerunMultiTest
  >>>
  output {
    File out_stdout = stdout()
  }
}