version 1.0

task Preseq {
  command <<<
    preseq
  >>>
  output {
    File out_stdout = stdout()
  }
}