version 1.0

task Adamsubmit {
  input {
    Int d_eight_b
  }
  command <<<
    adam_submit \
      ~{d_eight_b}
  >>>
  runtime {
    docker: "quay.io/biocontainers/adam:0.34.0--0"
  }
  parameter_meta {
    d_eight_b: "888   \\       d8b          d8b  d8b"
  }
  output {
    File out_stdout = stdout()
  }
}