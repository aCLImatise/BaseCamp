version 1.0

task SsuEslAlimapMsafile2 {
  input {
    String ssu_esl_ali_map
    String msa_file_one
    String msa_file_two
  }
  command <<<
    ssu-esl-alimap msafile2 \
      ~{ssu_esl_ali_map} \
      ~{msa_file_one} \
      ~{msa_file_two}
  >>>
  parameter_meta {
    ssu_esl_ali_map: ""
    msa_file_one: ""
    msa_file_two: ""
  }
}