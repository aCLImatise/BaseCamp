version 1.0

task SsuEslMaskMaskfile {
  input {
    String ssu_esl_mask
    String sq_file
    String mask_file
  }
  command <<<
    ssu-esl-mask maskfile \
      ~{ssu_esl_mask} \
      ~{sq_file} \
      ~{mask_file}
  >>>
  parameter_meta {
    ssu_esl_mask: ""
    sq_file: ""
    mask_file: ""
  }
}