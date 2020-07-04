version 1.0

task NhmmscanHmmdb {
  input {
    Boolean? options
    String seq_file
  }
  command <<<
    nhmmscan hmmdb \
      ~{seq_file} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    options: ""
    seq_file: ""
  }
}