version 1.0

task EslalimapMsafile1 {
  input {
    Int msa_file_two
  }
  command <<<
    esl_alimap msafile1 \
      ~{msa_file_two}
  >>>
  runtime {
    docker: "quay.io/biocontainers/easel:0.47--h516909a_0"
  }
  parameter_meta {
    msa_file_two: ""
  }
  output {
    File out_stdout = stdout()
  }
}