version 1.0

task MapMers {
  command <<<
    mapMers
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}