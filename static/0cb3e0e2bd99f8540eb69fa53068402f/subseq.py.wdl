version 1.0

task Subseqpy {
  command <<<
    subseq_py
  >>>
  output {
    File out_stdout = stdout()
  }
}