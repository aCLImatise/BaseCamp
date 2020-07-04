version 1.0

task SsuEslAlimapMsafile1 {
  input {
    String msa_file_two
  }
  command <<<
    ssu-esl-alimap msafile1 \
      ~{msa_file_two}
  >>>
  parameter_meta {
    msa_file_two: ""
  }
}