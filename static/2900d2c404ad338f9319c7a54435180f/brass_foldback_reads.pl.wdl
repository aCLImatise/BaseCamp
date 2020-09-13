version 1.0

task BrassFoldbackReadspl {
  command <<<
    brass_foldback_reads_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}