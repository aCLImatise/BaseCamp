version 1.0

task ExampleCpp {
  command <<<
    example_cpp
  >>>
  output {
    File out_stdout = stdout()
  }
}