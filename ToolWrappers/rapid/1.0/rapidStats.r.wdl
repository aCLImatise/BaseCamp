version 1.0

task RapidStatsr {
  command <<<
    rapidStats_r
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}