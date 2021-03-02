version 1.0

task Fitch {
  command <<<
    fitch
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}