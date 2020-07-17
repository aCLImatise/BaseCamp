version 1.0

task ProbKnotSmp {
  input {
    String prob_knot
    String input_file
    String ct_file
  }
  command <<<
    ProbKnot-smp \
      ~{prob_knot} \
      ~{input_file} \
      ~{ct_file}
  >>>
  parameter_meta {
    prob_knot: ""
    input_file: ""
    ct_file: ""
  }
}