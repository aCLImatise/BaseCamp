version 1.0

task BlastAndPromiscuityFilterpl {
  command <<<
    blast_and_promiscuity_filter_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}