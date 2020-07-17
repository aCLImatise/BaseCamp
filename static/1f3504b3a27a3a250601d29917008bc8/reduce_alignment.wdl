version 1.0

task ReduceAlignment {
  input {
    String start
    String width
    String alignment
  }
  command <<<
    reduce-alignment \
      ~{start} \
      ~{width} \
      ~{alignment}
  >>>
  parameter_meta {
    start: ""
    width: ""
    alignment: ""
  }
}