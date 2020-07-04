version 1.0

task EslMaskMaskfile {
  input {
    String esl_mask
    String sq_file
    String mask_file
  }
  command <<<
    esl-mask maskfile \
      ~{esl_mask} \
      ~{sq_file} \
      ~{mask_file}
  >>>
  parameter_meta {
    esl_mask: ""
    sq_file: ""
    mask_file: ""
  }
}