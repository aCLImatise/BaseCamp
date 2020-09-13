version 1.0

task Mglenvsh {
  command <<<
    mglenv_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}