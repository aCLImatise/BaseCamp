version 1.0

task Degapseq {
  command <<<
    _degapseq
  >>>
  output {
    File out_stdout = stdout()
  }
}