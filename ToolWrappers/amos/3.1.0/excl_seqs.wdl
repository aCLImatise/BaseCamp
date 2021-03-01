version 1.0

task ExclSeqs {
  command <<<
    excl_seqs
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}