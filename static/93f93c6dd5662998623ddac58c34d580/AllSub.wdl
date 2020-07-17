version 1.0

task AllSub {
  input {
    String seq_file
    String ct_file
  }
  command <<<
    AllSub \
      ~{seq_file} \
      ~{ct_file}
  >>>
  parameter_meta {
    seq_file: ""
    ct_file: ""
  }
}