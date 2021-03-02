version 1.0

task EslmaskMaskfile {
  input {
    String esl_mask
    String sq_file
    String mask_file
  }
  command <<<
    esl_mask maskfile \
      ~{esl_mask} \
      ~{sq_file} \
      ~{mask_file}
  >>>
  runtime {
    docker: "quay.io/biocontainers/easel:0.47--h516909a_0"
  }
  parameter_meta {
    esl_mask: ""
    sq_file: ""
    mask_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}