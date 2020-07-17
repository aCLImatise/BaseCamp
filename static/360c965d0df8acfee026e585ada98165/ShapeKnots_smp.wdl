version 1.0

task ShapeKnotsSmp {
  input {
    String shape_knots
    String seq_file
    String ct_file
  }
  command <<<
    ShapeKnots-smp \
      ~{shape_knots} \
      ~{seq_file} \
      ~{ct_file}
  >>>
  parameter_meta {
    shape_knots: ""
    seq_file: ""
    ct_file: ""
  }
}