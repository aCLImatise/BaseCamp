version 1.0

task RemovePoorSeq.pl {
  input {
    String seq_file
  }
  command <<<
    removePoorSeq.pl \
      ~{seq_file}
  >>>
  parameter_meta {
    seq_file: ""
  }
}