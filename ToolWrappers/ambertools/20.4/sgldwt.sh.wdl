version 1.0

task Sgldwtsh {
  command <<<
    sgldwt_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}