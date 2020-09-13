version 1.0

task SsueslalimapMsafile1 {
  input {
    Int msa_file_two
  }
  command <<<
    ssu_esl_alimap msafile1 \
      ~{msa_file_two}
  >>>
  parameter_meta {
    msa_file_two: ""
  }
  output {
    File out_stdout = stdout()
  }
}