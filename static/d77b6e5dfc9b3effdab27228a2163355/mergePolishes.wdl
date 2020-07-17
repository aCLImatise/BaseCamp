version 1.0

task MergePolishes {
  input {
    String? o
    String? m
    String cdna
    String cdna_one
    String cdna_two
  }
  command <<<
    mergePolishes \
      ~{cdna} \
      ~{cdna_one} \
      ~{cdna_two} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(m) then ("-m " +  '"' + m + '"') else ""}
  >>>
  parameter_meta {
    o: ""
    m: ""
    cdna: ""
    cdna_one: ""
    cdna_two: ""
  }
}