version 1.0

task StarfishValidateCodebook {
  input {
    String json_file_or_url
  }
  command <<<
    starfish validate codebook \
      ~{json_file_or_url}
  >>>
  runtime {
    docker: "quay.io/biocontainers/starfish:0.2.1--py_0"
  }
  parameter_meta {
    json_file_or_url: ""
  }
  output {
    File out_stdout = stdout()
  }
}