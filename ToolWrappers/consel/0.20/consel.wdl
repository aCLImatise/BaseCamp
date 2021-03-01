version 1.0

task Consel {
  command <<<
    consel
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}