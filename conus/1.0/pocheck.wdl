version 1.0

task Pocheck {
  input {
    Boolean? options
    String seq_file_in
  }
  command <<<
    pocheck \
      ~{seq_file_in} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    options: ""
    seq_file_in: ""
  }
}