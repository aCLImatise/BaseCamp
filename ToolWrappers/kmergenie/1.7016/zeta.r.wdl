version 1.0

task Zetar {
  command <<<
    zeta_r
  >>>
  output {
    File out_stdout = stdout()
  }
}