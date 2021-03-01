version 1.0

task _3MutCountPileuppl {
  command <<<
    __3_mut_count_pileup_pl
  >>>
  runtime {
    docker: "quay.io/biocontainers/sat-bsa:1.12--0"
  }
  output {
    File out_stdout = stdout()
  }
}