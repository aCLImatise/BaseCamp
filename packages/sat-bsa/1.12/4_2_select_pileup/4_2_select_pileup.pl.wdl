version 1.0

task _2SelectPileuppl {
  command <<<
    __2_select_pileup_pl
  >>>
  runtime {
    docker: "quay.io/biocontainers/sat-bsa:1.12--0"
  }
  output {
    File out_stdout = stdout()
  }
}