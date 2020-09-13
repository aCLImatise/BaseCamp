version 1.0

task GenericWrapper {
  command <<<
    GenericWrapper
  >>>
  output {
    File out_stdout = stdout()
  }
}