version 1.0

task MafToIntSeqspy {
  command <<<
    maf_to_int_seqs_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}