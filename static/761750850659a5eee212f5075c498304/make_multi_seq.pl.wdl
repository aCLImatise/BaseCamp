version 1.0

task MakeMultiSeqpl {
  command <<<
    make_multi_seq_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}