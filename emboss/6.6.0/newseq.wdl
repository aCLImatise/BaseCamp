version 1.0

task Newseq {
  command <<<
    newseq
  >>>
  output {
    File out_stdout = stdout()
  }
}