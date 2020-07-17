version 1.0

task HmmalignHmmfile {
  input {
    Boolean? options
    String seq_file
  }
  command <<<
    hmmalign hmmfile \
      ~{seq_file} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    options: ""
    seq_file: ""
  }
}