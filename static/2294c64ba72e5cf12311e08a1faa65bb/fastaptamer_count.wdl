version 1.0

task FastaptamerCount {
  input {
    Boolean? q
    Boolean? v
    String? i
    String? o
  }
  command <<<
    fastaptamer_count \
      ~{true="-q" false="" q} \
      ~{true="-v" false="" v} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    q: ""
    v: ""
    i: ""
    o: ""
  }
}