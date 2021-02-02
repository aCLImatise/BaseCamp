version 1.0

task TrimMegaReadspl {
  command <<<
    trim_mega_reads_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}