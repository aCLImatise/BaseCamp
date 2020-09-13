version 1.0

task Checkseq {
  command <<<
    checkseq
  >>>
  output {
    File out_stdout = stdout()
  }
}