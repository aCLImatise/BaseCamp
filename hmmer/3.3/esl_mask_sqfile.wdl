version 1.0

task EslMaskSqfile {
  input {
    String mask_file
  }
  command <<<
    esl-mask sqfile \
      ~{mask_file}
  >>>
  parameter_meta {
    mask_file: ""
  }
}