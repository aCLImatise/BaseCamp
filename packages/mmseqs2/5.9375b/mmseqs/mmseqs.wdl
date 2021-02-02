version 1.0

task Mmseqs {
  command <<<
    mmseqs
  >>>
  output {
    File out_stdout = stdout()
  }
}