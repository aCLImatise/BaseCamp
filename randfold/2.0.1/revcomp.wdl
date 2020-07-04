version 1.0

task Revcomp {
  input {
    Boolean? options
    String seq_file
  }
  command <<<
    revcomp \
      ~{seq_file} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    options: ""
    seq_file: ""
  }
}