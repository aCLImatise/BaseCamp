version 1.0

task Sdtether {
  command <<<
    sdtether
  >>>
  output {
    File out_stdout = stdout()
  }
}