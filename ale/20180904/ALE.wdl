version 1.0

task ALE {
  input {
    Boolean? options
    String alignments_dot
    String? s_vertical_line_b
    String am
    String assembly_dot_fast_a
  }
  command <<<
    ALE \
      ~{alignments_dot} \
      ~{s_vertical_line_b} \
      ~{am} \
      ~{assembly_dot_fast_a} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    options: ""
    alignments_dot: ""
    s_vertical_line_b: ""
    am: ""
    assembly_dot_fast_a: ""
  }
}