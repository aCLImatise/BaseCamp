version 1.0

task Cmprpl {
  command <<<
    cmpr_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}