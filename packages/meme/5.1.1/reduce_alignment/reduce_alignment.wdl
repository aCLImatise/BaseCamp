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
  parameter_meta {
    start: ""
    width: ""
    alignment: ""
  }
  output {
    File out_stdout = stdout()
  }
}