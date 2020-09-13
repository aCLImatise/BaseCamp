version 1.0

task EslmaskSqfile {
  input {
    String mask_file
  }
  command <<<
    esl_mask sqfile \
      ~{mask_file}
  >>>
  parameter_meta {
    mask_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}