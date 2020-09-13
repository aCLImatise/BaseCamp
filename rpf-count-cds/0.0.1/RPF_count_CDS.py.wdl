version 1.0

task RPFCountCDSpy {
  command <<<
    RPF_count_CDS_py
  >>>
  output {
    File out_stdout = stdout()
  }
}