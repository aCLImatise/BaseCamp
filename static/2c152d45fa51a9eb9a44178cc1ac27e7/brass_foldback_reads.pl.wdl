version 1.0

task BrassFoldbackReadspl {
  command <<<
    brass_foldback_reads_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}