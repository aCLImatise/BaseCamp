version 1.0

task Bseqc2mbiasplotR {
  command <<<
    bseqc2mbiasplot_R
  >>>
  output {
    File out_stdout = stdout()
  }
}