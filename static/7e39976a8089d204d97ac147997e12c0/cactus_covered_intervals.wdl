version 1.0

task CactusCoveredIntervals {
  input {
    Boolean? query_offsets
    File? mark_end
    String? progress
  }
  command <<<
    cactus_covered_intervals \
      ~{if (query_offsets) then "--queryoffsets" else ""} \
      ~{if (mark_end) then "--markend" else ""} \
      ~{if defined(progress) then ("--progress " +  '"' + progress + '"') else ""}
  >>>
  parameter_meta {
    query_offsets: "input query names contain offsets, as described below\\n(by default input query names do not contain offsets)"
    mark_end: "write a comment at the end of the output file"
    progress: "report each chromosome as we encounter it"
  }
  output {
    File out_stdout = stdout()
    File out_mark_end = "${in_mark_end}"
  }
}