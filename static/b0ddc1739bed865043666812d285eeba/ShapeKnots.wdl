version 1.0

task ShapeKnots {
  input {
    String seq_file
    String ct_file
  }
  command <<<
    ShapeKnots \
      ~{seq_file} \
      ~{ct_file}
  >>>
  parameter_meta {
    seq_file: ""
    ct_file: ""
  }
}