version 1.0

task ClassifyReadspl {
  command <<<
    classify_reads_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}