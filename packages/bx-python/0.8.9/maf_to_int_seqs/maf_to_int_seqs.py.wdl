version 1.0

task MafToIntSeqspy {
  command <<<
    maf_to_int_seqs_py
  >>>
  output {
    File out_stdout = stdout()
  }
}