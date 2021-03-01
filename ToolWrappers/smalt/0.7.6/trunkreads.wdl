version 1.0

task Trunkreads {
  command <<<
    trunkreads
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}