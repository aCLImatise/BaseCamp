version 1.0

task TranslateReducedReadspl {
  command <<<
    translate_reduced_reads_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}