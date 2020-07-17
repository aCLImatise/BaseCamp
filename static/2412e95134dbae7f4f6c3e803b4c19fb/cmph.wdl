version 1.0

task Cmph {
  input {
    Boolean? var_0
    Boolean? var_1
    String? k
    String? f
    Boolean? g
    String? c
    String? s
    String? a
    String? var_8
    String? b
    String? t
    String? d
    File? var_12
  }
  command <<<
    cmph \
      ~{true="-v" false="" var_0} \
      ~{true="-V" false="" var_1} \
      ~{if defined(k) then ("-k " +  '"' + k + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""} \
      ~{true="-g" false="" g} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""} \
      ~{if defined(a) then ("-a " +  '"' + a + '"') else ""} \
      ~{if defined(var_8) then ("-M " +  '"' + var_8 + '"') else ""} \
      ~{if defined(b) then ("-b " +  '"' + b + '"') else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""} \
      ~{if defined(var_12) then ("-m " +  '"' + var_12 + '"') else ""}
  >>>
  parameter_meta {
    var_0: ""
    var_1: ""
    k: ""
    f: ""
    g: ""
    c: ""
    s: ""
    a: ""
    var_8: ""
    b: ""
    t: ""
    d: ""
    var_12: ""
  }
}