version 1.0

task RPFCountCDSNonStrandedpy {
  command <<<
    RPF_count_CDS_nonStranded_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}