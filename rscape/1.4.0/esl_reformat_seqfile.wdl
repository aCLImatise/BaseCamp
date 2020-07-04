version 1.0

task EslReformatSeqfile {
  input {
    Boolean? options
    String esl_reformat
    String format
    String seq_file
  }
  command <<<
    esl-reformat seqfile \
      ~{esl_reformat} \
      ~{format} \
      ~{seq_file} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    options: ""
    esl_reformat: ""
    format: ""
    seq_file: ""
  }
}