version 1.0

task BedGeneParts {
  input {
    String? pro_start
    String? pro_end
    String part
    String in_dot_bed
    String out_dot_bed
  }
  command <<<
    bedGeneParts \
      ~{part} \
      ~{in_dot_bed} \
      ~{out_dot_bed} \
      ~{if defined(pro_start) then ("-proStart " +  '"' + pro_start + '"') else ""} \
      ~{if defined(pro_end) then ("-proEnd " +  '"' + pro_end + '"') else ""}
  >>>
  parameter_meta {
    pro_start: "- start of promoter relative to txStart, default -100"
    pro_end: "- end of promoter relative to txStart, default 50"
    part: ""
    in_dot_bed: ""
    out_dot_bed: ""
  }
}