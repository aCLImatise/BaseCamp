version 1.0

task SparseAssembler {
  command <<<
    SparseAssembler
  >>>
  output {
    File out_stdout = stdout()
  }
}