version 1.0

task BedRestrictToPositions {
  input {
    String in_dot_bed
    String restrict_dot_bed
    String out_dot_bed
  }
  command <<<
    bedRestrictToPositions \
      ~{in_dot_bed} \
      ~{restrict_dot_bed} \
      ~{out_dot_bed}
  >>>
  parameter_meta {
    in_dot_bed: ""
    restrict_dot_bed: ""
    out_dot_bed: ""
  }
}