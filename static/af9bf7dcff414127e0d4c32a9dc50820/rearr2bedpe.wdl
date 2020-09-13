version 1.0

task Rearr2bedpe {
  command <<<
    rearr2bedpe
  >>>
  output {
    File out_stdout = stdout()
  }
}