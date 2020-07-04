version 1.0

task Metaxa2Dbb {
  input {
    String? i
    String? o
  }
  command <<<
    metaxa2_dbb \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    i: ""
    o: ""
  }
}