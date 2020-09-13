version 1.0

task Seqidtype {
  command <<<
    seqidtype
  >>>
  output {
    File out_stdout = stdout()
  }
}