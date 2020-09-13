version 1.0

task Ratewigpl {
  command <<<
    ratewig_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}