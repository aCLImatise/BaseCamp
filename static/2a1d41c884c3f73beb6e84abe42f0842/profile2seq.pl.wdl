version 1.0

task Profile2seqpl {
  command <<<
    profile2seq_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}