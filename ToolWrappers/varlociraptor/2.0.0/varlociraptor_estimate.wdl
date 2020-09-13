version 1.0

task VarlociraptorEstimate {
  command <<<
    varlociraptor estimate
  >>>
  output {
    File out_stdout = stdout()
  }
}