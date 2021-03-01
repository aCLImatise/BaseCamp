version 1.0

task Profile2seqpl {
  command <<<
    profile2seq_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}