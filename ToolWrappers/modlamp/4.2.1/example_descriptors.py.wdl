version 1.0

task ExampleDescriptorspy {
  command <<<
    example_descriptors_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}