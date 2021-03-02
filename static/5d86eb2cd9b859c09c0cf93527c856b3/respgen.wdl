version 1.0

task Respgen {
  command <<<
    respgen
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}