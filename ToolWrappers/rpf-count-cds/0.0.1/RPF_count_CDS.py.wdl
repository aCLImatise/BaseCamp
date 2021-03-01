version 1.0

task RPFCountCDSpy {
  command <<<
    RPF_count_CDS_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}