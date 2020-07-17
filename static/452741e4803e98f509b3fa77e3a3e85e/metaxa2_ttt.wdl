version 1.0

task Metaxa2Ttt {
  input {
    String? i
    String? o
  }
  command <<<
    metaxa2_ttt \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    i: ""
    o: ""
  }
}