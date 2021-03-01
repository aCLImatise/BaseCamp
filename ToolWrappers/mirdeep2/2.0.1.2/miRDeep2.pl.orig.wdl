version 1.0

task MiRDeep2plorig {
  command <<<
    miRDeep2_pl_orig
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}