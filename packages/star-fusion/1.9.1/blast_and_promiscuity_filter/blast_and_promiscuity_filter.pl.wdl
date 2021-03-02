version 1.0

task BlastAndPromiscuityFilterpl {
  command <<<
    blast_and_promiscuity_filter_pl
  >>>
  runtime {
    docker: "quay.io/biocontainers/star-fusion:1.9.1--0"
  }
  output {
    File out_stdout = stdout()
  }
}