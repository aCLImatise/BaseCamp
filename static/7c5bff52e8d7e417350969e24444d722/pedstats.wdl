version 1.0

task Pedstats {
  command <<<
    pedstats
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}