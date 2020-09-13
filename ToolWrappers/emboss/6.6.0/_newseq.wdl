version 1.0

task Newseq {
  command <<<
    _newseq
  >>>
  output {
    File out_stdout = stdout()
  }
}