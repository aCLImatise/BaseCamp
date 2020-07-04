version 1.0

task EslAlimapMsafile2 {
  input {
    String esl_ali_map
    String msa_file_one
    String msa_file_two
  }
  command <<<
    esl-alimap msafile2 \
      ~{esl_ali_map} \
      ~{msa_file_one} \
      ~{msa_file_two}
  >>>
  parameter_meta {
    esl_ali_map: ""
    msa_file_one: ""
    msa_file_two: ""
  }
}