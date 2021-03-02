version 1.0

task MapMersdepth {
  command <<<
    mapMers_depth
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}