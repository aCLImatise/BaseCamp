version 1.0

task ReferenceTests {
  command <<<
    referenceTests
  >>>
  output {
    File out_stdout = stdout()
  }
}