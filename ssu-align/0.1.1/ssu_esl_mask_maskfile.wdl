version 1.0

task SsueslmaskMaskfile {
  input {
    String ssu_esl_mask
    String sq_file
    String mask_file
  }
  command <<<
    ssu_esl_mask maskfile \
      ~{ssu_esl_mask} \
      ~{sq_file} \
      ~{mask_file}
  >>>
  parameter_meta {
    ssu_esl_mask: ""
    sq_file: ""
    mask_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}