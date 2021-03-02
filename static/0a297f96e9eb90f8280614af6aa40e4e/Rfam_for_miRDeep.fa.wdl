version 1.0

task RfamForMiRDeepfa {
  command <<<
    Rfam_for_miRDeep_fa
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}