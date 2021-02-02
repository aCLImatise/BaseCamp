version 1.0

task GtfToAlignmentGff3pl {
  command <<<
    gtf_to_alignment_gff3_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}