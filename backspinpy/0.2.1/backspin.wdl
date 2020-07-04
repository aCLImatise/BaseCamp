version 1.0

task Backspin {
  input {
    Boolean? hbv
    String? i
    String? o
    Int? d
    Int? f
    Int? var_5
    Float? var_6
    Int? var_7
    Float? var_8
    Int? g
    Int? c
    Float? k
    Float? r
  }
  command <<<
    backspin \
      ~{true="-hbv" false="" hbv} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""} \
      ~{if defined(var_5) then ("-t " +  '"' + var_5 + '"') else ""} \
      ~{if defined(var_6) then ("-s " +  '"' + var_6 + '"') else ""} \
      ~{if defined(var_7) then ("-T " +  '"' + var_7 + '"') else ""} \
      ~{if defined(var_8) then ("-S " +  '"' + var_8 + '"') else ""} \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""} \
      ~{if defined(k) then ("-k " +  '"' + k + '"') else ""} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""}
  >>>
  parameter_meta {
    hbv: ""
    i: ""
    o: ""
    d: ""
    f: ""
    var_5: ""
    var_6: ""
    var_7: ""
    var_8: ""
    g: ""
    c: ""
    k: ""
    r: ""
  }
}