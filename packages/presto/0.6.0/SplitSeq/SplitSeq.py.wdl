version 1.0

task SplitSeqpy {
  command <<<
    SplitSeq_py
  >>>
  output {
    File out_stdout = stdout()
  }
}