version 1.0

task FastxUncollapser {
  input {
    String? c
    Boolean? v
    String? i
    String? o
    String fast_a_un_collapse_r
  }
  command <<<
    fastx_uncollapser \
      ~{fast_a_un_collapse_r} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""} \
      ~{true="-v" false="" v} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    c: ""
    v: ""
    i: ""
    o: ""
    fast_a_un_collapse_r: ""
  }
}