version 1.0

task Gff3ToGtfpl {
  command <<<
    gff3_to_gtf_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}