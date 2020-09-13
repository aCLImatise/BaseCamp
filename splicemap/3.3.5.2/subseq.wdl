version 1.0

task Subseq {
  command <<<
    subseq
  >>>
  output {
    File out_stdout = stdout()
  }
}