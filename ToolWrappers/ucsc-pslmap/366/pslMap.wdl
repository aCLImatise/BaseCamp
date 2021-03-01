version 1.0

task PslMap {
  command <<<
    pslMap
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}