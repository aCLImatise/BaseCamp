version 1.0

task ValidateBlatParallelRna {
  command <<<
    validate_blat_parallel_rna
  >>>
  output {
    File out_stdout = stdout()
  }
}