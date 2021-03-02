version 1.0

task Contml {
  command <<<
    contml
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}