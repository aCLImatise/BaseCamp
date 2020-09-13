version 1.0

task Zetarbak {
  command <<<
    zeta_r_bak
  >>>
  output {
    File out_stdout = stdout()
  }
}