version 1.0

task ExampleCpp {
  command <<<
    example_cpp
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}