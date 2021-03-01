version 1.0

task ValidateBlatParallelRna {
  command <<<
    validate_blat_parallel_rna
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}