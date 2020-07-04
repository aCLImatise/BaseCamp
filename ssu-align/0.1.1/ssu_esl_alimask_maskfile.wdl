version 1.0

task SsuEslAlimaskMaskfile {
  input {
    String ssu_esl_ali_mask
    String msa_file
    String mask_file
  }
  command <<<
    ssu-esl-alimask maskfile \
      ~{ssu_esl_ali_mask} \
      ~{msa_file} \
      ~{mask_file}
  >>>
  parameter_meta {
    ssu_esl_ali_mask: ""
    msa_file: ""
    mask_file: ""
  }
}