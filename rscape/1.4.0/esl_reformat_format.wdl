version 1.0

task EslReformatFormat {
  input {
    Boolean? options
    String seq_file
  }
  command <<<
    esl-reformat format \
      ~{seq_file} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    options: ""
    seq_file: ""
  }
}