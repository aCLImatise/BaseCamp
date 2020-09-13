version 1.0

task ParallelRnaBlato {
  command <<<
    parallel_rna_blat_o
  >>>
  output {
    File out_stdout = stdout()
  }
}