version 1.0

task Scheck {
  input {
    Boolean? options
    String s_test
    String seq_file_in
  }
  command <<<
    scheck \
      ~{s_test} \
      ~{seq_file_in} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    options: ""
    s_test: ""
    seq_file_in: ""
  }
}