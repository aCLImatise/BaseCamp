version 1.0

task BedIntersectpy {
  input {
    Int? min_cols
    Int? upstream_pad
    Int? downstream_pad
    Boolean? reverse
    Boolean? booleans
    Int bed_file_one
    Int bed_file_two
  }
  command <<<
    bed_intersect_py \
      ~{bed_file_one} \
      ~{bed_file_two} \
      ~{if defined(min_cols) then ("--mincols " +  '"' + min_cols + '"') else ""} \
      ~{if defined(upstream_pad) then ("--upstream_pad " +  '"' + upstream_pad + '"') else ""} \
      ~{if defined(downstream_pad) then ("--downstream_pad " +  '"' + downstream_pad + '"') else ""} \
      ~{if (reverse) then "--reverse" else ""} \
      ~{if (booleans) then "--booleans" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bx-python:0.8.10--py36h5e0341f_0"
  }
  parameter_meta {
    min_cols: "Require this much overlap (default 1bp)"
    upstream_pad: "upstream interval padding (default 0bp)"
    downstream_pad: "downstream interval padding (default 0bp)"
    reverse: "Print regions that DO NOT overlap"
    booleans: "Just print '1' if interval overlaps or '0' otherwise"
    bed_file_one: ""
    bed_file_two: ""
  }
  output {
    File out_stdout = stdout()
  }
}