version 1.0

task PtR {
  command <<<
    PtR
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}