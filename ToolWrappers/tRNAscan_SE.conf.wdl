version 1.0

task TRNAscanSEconf {
  command <<<
    tRNAscan_SE_conf
  >>>
  output {
    File out_stdout = stdout()
  }
}