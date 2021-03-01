version 1.0

task RemovePoorSeqpl {
  input {
    File seq_file
  }
  command <<<
    removePoorSeq_pl \
      ~{seq_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    seq_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}