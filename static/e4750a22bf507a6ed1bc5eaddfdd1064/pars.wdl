version 1.0

task Pars {
  command <<<
    pars
  >>>
  output {
    File out_stdout = stdout()
  }
}