version 1.0

task Redepthpl {
  command <<<
    redepth_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}