version 1.0

task TRNAscanSEconf {
  command <<<
    tRNAscan_SE_conf
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}