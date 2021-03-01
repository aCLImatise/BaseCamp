version 1.0

task Transterm {
  command <<<
    transterm
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}