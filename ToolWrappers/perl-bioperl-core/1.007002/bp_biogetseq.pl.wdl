version 1.0

task BpBiogetseqpl {
  command <<<
    bp_biogetseq_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}