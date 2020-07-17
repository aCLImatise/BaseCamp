version 1.0

task OligoMatch {
  input {
    String oligos
    String sequence
    String output_dot_bed
  }
  command <<<
    oligoMatch \
      ~{oligos} \
      ~{sequence} \
      ~{output_dot_bed}
  >>>
  parameter_meta {
    oligos: ""
    sequence: ""
    output_dot_bed: ""
  }
}