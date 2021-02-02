version 1.0

task AddPbSeqpl {
  command <<<
    add_pb_seq_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}