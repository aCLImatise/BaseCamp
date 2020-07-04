version 1.0

task HmmscanHmmdb {
  input {
    Boolean? options
    String seq_file
  }
  command <<<
    hmmscan hmmdb \
      ~{seq_file} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    options: ""
    seq_file: ""
  }
}