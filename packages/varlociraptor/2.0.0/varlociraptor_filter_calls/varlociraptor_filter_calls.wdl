version 1.0

task VarlociraptorFiltercalls {
  command <<<
    varlociraptor filter_calls
  >>>
  output {
    File out_stdout = stdout()
  }
}