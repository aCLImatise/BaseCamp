version 1.0

task SegmentFst {
  input {
    String? s
    String? f
  }
  command <<<
    segmentFst \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""}
  >>>
  parameter_meta {
    s: ""
    f: ""
  }
}