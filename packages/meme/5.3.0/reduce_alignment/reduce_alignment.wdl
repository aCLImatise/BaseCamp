version 1.0

task Reducealignment {
  input {
    String start
    String width
    String alignment
  }
  command <<<
    reduce_alignment \
      ~{start} \
      ~{width} \
      ~{alignment}
  >>>
  runtime {
    docker: "quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0"
  }
  parameter_meta {
    start: ""
    width: ""
    alignment: ""
  }
  output {
    File out_stdout = stdout()
  }
}