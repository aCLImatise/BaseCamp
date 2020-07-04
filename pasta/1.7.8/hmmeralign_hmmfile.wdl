version 1.0

task HmmeralignHmmfile {
  input {
    Boolean? options
    String seq_file
  }
  command <<<
    hmmeralign hmmfile \
      ~{seq_file} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    options: ""
    seq_file: ""
  }
}