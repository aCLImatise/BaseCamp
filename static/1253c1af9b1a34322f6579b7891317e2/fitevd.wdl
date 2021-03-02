version 1.0

task Fitevd {
  input {
    String q
  }
  command <<<
    fitevd \
      ~{q}
  >>>
  runtime {
    docker: "quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0"
  }
  parameter_meta {
    q: ""
  }
  output {
    File out_stdout = stdout()
  }
}