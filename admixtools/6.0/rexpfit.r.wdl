version 1.0

task Rexpfitr {
  command <<<
    rexpfit_r
  >>>
  output {
    File out_stdout = stdout()
  }
}