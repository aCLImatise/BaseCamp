version 1.0

task MTBseq {
  command <<<
    MTBseq
  >>>
  output {
    File out_stdout = stdout()
  }
}