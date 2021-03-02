version 1.0

task Bseqc2mbiasplotR {
  command <<<
    bseqc2mbiasplot_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}