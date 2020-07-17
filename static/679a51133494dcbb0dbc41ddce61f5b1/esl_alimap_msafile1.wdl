version 1.0

task EslAlimapMsafile1 {
  input {
    String msa_file_two
  }
  command <<<
    esl-alimap msafile1 \
      ~{msa_file_two}
  >>>
  parameter_meta {
    msa_file_two: ""
  }
}