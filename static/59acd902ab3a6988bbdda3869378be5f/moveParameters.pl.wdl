version 1.0

task MoveParameterspl {
  command <<<
    moveParameters_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}