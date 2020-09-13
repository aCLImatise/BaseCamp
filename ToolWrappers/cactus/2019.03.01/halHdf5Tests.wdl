version 1.0

task HalHdf5Tests {
  command <<<
    halHdf5Tests
  >>>
  output {
    File out_stdout = stdout()
  }
}