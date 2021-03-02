version 1.0

task SparseAssembler {
  command <<<
    SparseAssembler
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}