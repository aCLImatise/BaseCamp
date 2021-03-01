version 1.0

task PhizzDelete {
  command <<<
    phizz delete
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}