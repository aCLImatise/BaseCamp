version 1.0

task DBG2OLC {
  command <<<
    DBG2OLC
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}