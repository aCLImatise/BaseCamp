version 1.0

task DuplexFoldSmp {
  input {
    String duplex_fold
    String seq_file_one
    String seq_file_two
    String ct_file
  }
  command <<<
    DuplexFold-smp \
      ~{duplex_fold} \
      ~{seq_file_one} \
      ~{seq_file_two} \
      ~{ct_file}
  >>>
  parameter_meta {
    duplex_fold: ""
    seq_file_one: ""
    seq_file_two: ""
    ct_file: ""
  }
}