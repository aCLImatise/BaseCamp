version 1.0

task FastxClipper {
  input {
    String? a
    Boolean? var_1
    String? l
    Boolean? n
    String? var_4
    Boolean? var_5
    Boolean? var_6
    Boolean? o
    Boolean? v
    Boolean? z
    String? i
  }
  command <<<
    fastx_clipper \
      ~{if defined(a) then ("-a " +  '"' + a + '"') else ""} \
      ~{true="-D" false="" var_1} \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""} \
      ~{true="-n" false="" n} \
      ~{if defined(var_4) then ("-d " +  '"' + var_4 + '"') else ""} \
      ~{true="-c" false="" var_5} \
      ~{true="-C" false="" var_6} \
      ~{true="-o" false="" o} \
      ~{true="-v" false="" v} \
      ~{true="-z" false="" z} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    a: ""
    var_1: ""
    l: ""
    n: ""
    var_4: ""
    var_5: ""
    var_6: ""
    o: ""
    v: ""
    z: ""
    i: ""
  }
}