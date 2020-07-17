version 1.0

task Metaxa2Uc {
  input {
    String? i
    String? o
  }
  command <<<
    metaxa2_uc \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    i: ""
    o: ""
  }
}