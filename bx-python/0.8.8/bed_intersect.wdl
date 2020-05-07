version 1.0

task BedIntersect.py {
  input {
    Int minMinCols
    String upstreamUpstreamPad
    String downstreamDownstreamPad
    Boolean reverseReverse
    Boolean booleansBooleans
    String? bedBedFile1
    String? bedBedFile2
  }
  command <<<
    bed_intersect.py \
      ~{bedBedFile1} \
      ~{if defined(minMinCols) then ("--mincols " +  '"' + minMinCols + '"') else ""} \
      ~{if defined(upstreamUpstreamPad) then ("--upstream_pad " +  '"' + upstreamUpstreamPad + '"') else ""} \
      ~{if defined(downstreamDownstreamPad) then ("--downstream_pad " +  '"' + downstreamDownstreamPad + '"') else ""} \
      ~{true="--reverse" false="" reverseReverse} \
      ~{true="--booleans" false="" booleansBooleans} \
      ~{bedBedFile2}
  >>>
}