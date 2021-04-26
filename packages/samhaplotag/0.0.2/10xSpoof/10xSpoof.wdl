version 1.0

task 0xSpoof {
  input {
    String fast_q_format
  }
  command <<<
    _0xSpoof \
      ~{fast_q_format}
  >>>
  runtime {
    docker: "quay.io/biocontainers/samhaplotag:0.0.2--h7d875b9_0"
  }
  parameter_meta {
    fast_q_format: ""
  }
  output {
    File out_stdout = stdout()
  }
}