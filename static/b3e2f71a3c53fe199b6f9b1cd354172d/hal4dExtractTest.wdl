version 1.0

task Hal4dExtractTest {
  command <<<
    hal4dExtractTest
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}