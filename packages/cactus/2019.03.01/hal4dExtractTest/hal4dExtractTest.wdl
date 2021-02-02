version 1.0

task Hal4dExtractTest {
  command <<<
    hal4dExtractTest
  >>>
  output {
    File out_stdout = stdout()
  }
}