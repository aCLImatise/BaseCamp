version 1.0

task Histogram2pl {
  command <<<
    histogram2_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}