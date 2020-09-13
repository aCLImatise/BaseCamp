version 1.0

task EslalimapMsafile2 {
  input {
    String esl_ali_map
    Int msa_file_one
    Int msa_file_two
  }
  command <<<
    esl_alimap msafile2 \
      ~{esl_ali_map} \
      ~{msa_file_one} \
      ~{msa_file_two}
  >>>
  parameter_meta {
    esl_ali_map: ""
    msa_file_one: ""
    msa_file_two: ""
  }
  output {
    File out_stdout = stdout()
  }
}