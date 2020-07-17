version 1.0

task CloseScaffoldGaps.sh {
  input {
    String? r
    String? q
    String? t
    String merge_scaffolds_dots_h
  }
  command <<<
    close_scaffold_gaps.sh \
      ~{merge_scaffolds_dots_h} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""} \
      ~{if defined(q) then ("-q " +  '"' + q + '"') else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""}
  >>>
  parameter_meta {
    r: ""
    q: ""
    t: ""
    merge_scaffolds_dots_h: ""
  }
}