version 1.0

task FilterSeqpy {
  command <<<
    FilterSeq_py
  >>>
  output {
    File out_stdout = stdout()
  }
}