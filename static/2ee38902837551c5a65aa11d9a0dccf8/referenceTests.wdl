version 1.0

task ReferenceTests {
  command <<<
    referenceTests
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}