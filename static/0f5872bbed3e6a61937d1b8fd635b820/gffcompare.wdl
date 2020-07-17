version 1.0

task Gffcompare {
  input {
    String? c_slash_a_slash_x
    String? var_1
    Boolean? var_2
    Boolean? t
    Boolean? v
    String? s
  }
  command <<<
    gffcompare \
      ~{if defined(c_slash_a_slash_x) then ("-C/-A/-X " +  '"' + c_slash_a_slash_x + '"') else ""} \
      ~{if defined(var_1) then ("-r " +  '"' + var_1 + '"') else ""} \
      ~{true="-R" false="" var_2} \
      ~{true="-T" false="" t} \
      ~{true="-V" false="" v} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""}
  >>>
  parameter_meta {
    c_slash_a_slash_x: ", do NOT discard any redundant transfrag matching a reference"
    var_1: ""
    var_2: ""
    t: ""
    v: ""
    s: ""
  }
}