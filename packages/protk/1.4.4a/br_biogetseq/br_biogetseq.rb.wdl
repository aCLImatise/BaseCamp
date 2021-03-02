version 1.0

task BrBiogetseqrb {
  command <<<
    br_biogetseq_rb
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}