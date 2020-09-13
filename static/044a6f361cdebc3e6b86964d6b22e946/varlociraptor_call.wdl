version 1.0

task VarlociraptorCall {
  command <<<
    varlociraptor call
  >>>
  output {
    File out_stdout = stdout()
  }
}