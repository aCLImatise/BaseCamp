version 1.0

task BrBiogetseqrb {
  command <<<
    br_biogetseq_rb
  >>>
  output {
    File out_stdout = stdout()
  }
}