version 1.0

task Gff3ToGtfpl {
  command <<<
    gff3_to_gtf_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}