version 1.0

task Cuffcompare {
  input {
    String? var_0
    Boolean? var_1
    Boolean? t
    Boolean? v
    String? s
  }
  command <<<
    cuffcompare \
      ~{if defined(var_0) then ("-r " +  '"' + var_0 + '"') else ""} \
      ~{true="-R" false="" var_1} \
      ~{true="-T" false="" t} \
      ~{true="-V" false="" v} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""}
  >>>
  parameter_meta {
    var_0: ""
    var_1: ""
    t: ""
    v: ""
    s: ""
  }
}