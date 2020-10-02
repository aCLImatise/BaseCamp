version 1.0

task Fastasubseq {
  command <<<
    fastasubseq
  >>>
  output {
    File out_stdout = stdout()
  }
}