version 1.0

task BedWeedOverlapping {
  input {
    String? max_overlap
    Boolean? invert
    String weeds_dot_bed
    String input_dot_bed
    String output_dot_bed
  }
  command <<<
    bedWeedOverlapping \
      ~{weeds_dot_bed} \
      ~{input_dot_bed} \
      ~{output_dot_bed} \
      ~{if defined(max_overlap) then ("-maxOverlap " +  '"' + max_overlap + '"') else ""} \
      ~{true="-invert" false="" invert}
  >>>
  parameter_meta {
    max_overlap: "- maximum overlapping ratio, default 0 (any overlap)"
    invert: "- keep the overlapping and get rid of everything else"
    weeds_dot_bed: ""
    input_dot_bed: ""
    output_dot_bed: ""
  }
}