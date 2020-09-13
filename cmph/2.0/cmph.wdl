version 1.0

task Cmph {
  input {
    File? var_0
    String? d
    String? t
    String? b
    String? var_4
    String? a
    String? s
    String? c
    Boolean? g
    String? f
    String? k
    Boolean? var_11
    Boolean? var_12
  }
  command <<<
    cmph \
      ~{if defined(var_0) then ("-m " +  '"' + var_0 + '"') else ""} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if defined(b) then ("-b " +  '"' + b + '"') else ""} \
      ~{if defined(var_4) then ("-M " +  '"' + var_4 + '"') else ""} \
      ~{if defined(a) then ("-a " +  '"' + a + '"') else ""} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""} \
      ~{if (g) then "-g" else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""} \
      ~{if defined(k) then ("-k " +  '"' + k + '"') else ""} \
      ~{if (var_11) then "-V" else ""} \
      ~{if (var_12) then "-v" else ""}
  >>>
  parameter_meta {
    var_0: ""
    d: ""
    t: ""
    b: ""
    var_4: ""
    a: ""
    s: ""
    c: ""
    g: ""
    f: ""
    k: ""
    var_11: ""
    var_12: ""
  }
  output {
    File out_stdout = stdout()
  }
}