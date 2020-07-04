version 1.0

task BedRemoveOverlap {
  input {
    String in_dot_bed
    String out_dot_bed
  }
  command <<<
    bedRemoveOverlap \
      ~{in_dot_bed} \
      ~{out_dot_bed}
  >>>
  parameter_meta {
    in_dot_bed: ""
    out_dot_bed: ""
  }
}