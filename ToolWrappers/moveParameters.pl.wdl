version 1.0

task MoveParameterspl {
  command <<<
    moveParameters_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}