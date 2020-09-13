version 1.0

task Ltqnormpl {
  command <<<
    ltqnorm_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}