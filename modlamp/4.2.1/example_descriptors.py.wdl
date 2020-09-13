version 1.0

task ExampleDescriptorspy {
  command <<<
    example_descriptors_py
  >>>
  output {
    File out_stdout = stdout()
  }
}