version 1.0

task CactusCoveredIntervals {
  input {
    Boolean? query_offsets
    Boolean? mark_end
    String? progress
  }
  command <<<
    cactus_covered_intervals \
      ~{true="--queryoffsets" false="" query_offsets} \
      ~{true="--markend" false="" mark_end} \
      ~{if defined(progress) then ("--progress " +  '"' + progress + '"') else ""}
  >>>
  parameter_meta {
    query_offsets: "input query names contain offsets, as described below (by default input query names do not contain offsets)"
    mark_end: "write a comment at the end of the output file"
    progress: "report each chromosome as we encounter it"
  }
}