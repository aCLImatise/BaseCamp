version 1.0

task ExclSeqs {
  command <<<
    excl_seqs
  >>>
  output {
    File out_stdout = stdout()
  }
}