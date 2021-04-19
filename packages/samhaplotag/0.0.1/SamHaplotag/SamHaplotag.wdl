version 1.0

task SamHaplotag {
  input {
    String sam_format
  }
  command <<<
    SamHaplotag \
      ~{sam_format}
  >>>
  runtime {
    docker: "quay.io/biocontainers/samhaplotag:0.0.1--h7d875b9_0"
  }
  parameter_meta {
    sam_format: ""
  }
  output {
    File out_stdout = stdout()
  }
}