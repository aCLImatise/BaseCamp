version 1.0

task Fetchseq {
  command <<<
    fetchseq
  >>>
  output {
    File out_stdout = stdout()
  }
}