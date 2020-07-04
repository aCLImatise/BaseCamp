version 1.0

task EslAlimaskMaskfile {
  input {
    String esl_ali_mask
    String msa_file
    String mask_file
  }
  command <<<
    esl-alimask maskfile \
      ~{esl_ali_mask} \
      ~{msa_file} \
      ~{mask_file}
  >>>
  parameter_meta {
    esl_ali_mask: ""
    msa_file: ""
    mask_file: ""
  }
}