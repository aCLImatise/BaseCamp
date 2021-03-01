version 1.0

task _6MatchPileuppl {
  command <<<
    __6_match_pileup_pl
  >>>
  runtime {
    docker: "quay.io/biocontainers/sat-bsa:1.12--0"
  }
  output {
    File out_stdout = stdout()
  }
}