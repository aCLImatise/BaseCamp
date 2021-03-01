version 1.0

task Stats {
  command <<<
    stats
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}