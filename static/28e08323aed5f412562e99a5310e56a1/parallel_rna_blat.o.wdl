version 1.0

task ParallelRnaBlato {
  command <<<
    parallel_rna_blat_o
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}