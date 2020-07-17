version 1.0

task SegmentIhs {
  input {
    String? s
    String? f
    String segment_fst
  }
  command <<<
    segmentIhs \
      ~{segment_fst} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""}
  >>>
  parameter_meta {
    s: ""
    f: ""
    segment_fst: ""
  }
}