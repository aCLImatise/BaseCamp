version 1.0

task BedIntersect.py {
  input {
    Int? min_cols
    String? upstream_pad
    String? downstream_pad
    Boolean? reverse
    Boolean? booleans
    String bed_file_one
    String bed_file_two
  }
  command <<<
    bed_intersect.py \
      ~{bed_file_one} \
      ~{bed_file_two} \
      ~{if defined(min_cols) then ("--mincols " +  '"' + min_cols + '"') else ""} \
      ~{if defined(upstream_pad) then ("--upstream_pad " +  '"' + upstream_pad + '"') else ""} \
      ~{if defined(downstream_pad) then ("--downstream_pad " +  '"' + downstream_pad + '"') else ""} \
      ~{true="--reverse" false="" reverse} \
      ~{true="--booleans" false="" booleans}
  >>>
  parameter_meta {
    min_cols: "Require this much overlap (default 1bp)"
    upstream_pad: "upstream interval padding (default 0bp)"
    downstream_pad: "downstream interval padding (default 0bp)"
    reverse: "Print regions that DO NOT overlap"
    booleans: "Just print '1' if interval overlaps or '0' otherwise"
    bed_file_one: ""
    bed_file_two: ""
  }
}