version 1.0

task EslmaskSqfile {
  input {
    String mask_file
  }
  command <<<
    esl_mask sqfile \
      ~{mask_file}
  >>>
  runtime {
    docker: "quay.io/biocontainers/easel:0.47--h516909a_0"
  }
  parameter_meta {
    mask_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}