version 1.0

task Mglenvcsh {
  command <<<
    mglenv_csh
  >>>
  output {
    File out_stdout = stdout()
  }
}