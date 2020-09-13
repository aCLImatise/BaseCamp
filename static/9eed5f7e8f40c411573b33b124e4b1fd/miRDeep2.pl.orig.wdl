version 1.0

task MiRDeep2plorig {
  command <<<
    miRDeep2_pl_orig
  >>>
  output {
    File out_stdout = stdout()
  }
}