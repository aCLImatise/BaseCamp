version 1.0

task Niceload {
  input {
    Boolean? v
    String? var_1
    String? l
    String? i
    Boolean? var_4
    String? m
  }
  command <<<
    niceload \
      ~{true="-v" false="" v} \
      ~{if defined(var_1) then ("-n " +  '"' + var_1 + '"') else ""} \
      ~{if defined(l) then ("-L " +  '"' + l + '"') else ""} \
      ~{if defined(i) then ("-I " +  '"' + i + '"') else ""} \
      ~{true="-N" false="" var_4} \
      ~{if defined(m) then ("-M " +  '"' + m + '"') else ""}
  >>>
  parameter_meta {
    v: ""
    var_1: ""
    l: ""
    i: ""
    var_4: ""
    m: ""
  }
}