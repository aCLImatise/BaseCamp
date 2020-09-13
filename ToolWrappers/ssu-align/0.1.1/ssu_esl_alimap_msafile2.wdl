version 1.0

task SsueslalimapMsafile2 {
  input {
    String ssu_esl_ali_map
    Int msa_file_one
    Int msa_file_two
  }
  command <<<
    ssu_esl_alimap msafile2 \
      ~{ssu_esl_ali_map} \
      ~{msa_file_one} \
      ~{msa_file_two}
  >>>
  parameter_meta {
    ssu_esl_ali_map: ""
    msa_file_one: ""
    msa_file_two: ""
  }
  output {
    File out_stdout = stdout()
  }
}