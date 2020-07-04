version 1.0

task FastxCollapser {
  input {
    Boolean? v
    String? i
    String? o
  }
  command <<<
    fastx_collapser \
      ~{true="-v" false="" v} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    v: ""
    i: ""
    o: ""
  }
}