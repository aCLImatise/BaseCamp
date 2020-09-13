version 1.0

task Resp {
  input {
    String? s
    String? w
    String? e
    String? t
    String? q
    String? p
    String? var_6
    String? i
    Boolean? var_8
  }
  command <<<
    resp \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""} \
      ~{if defined(w) then ("-w " +  '"' + w + '"') else ""} \
      ~{if defined(e) then ("-e " +  '"' + e + '"') else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if defined(q) then ("-q " +  '"' + q + '"') else ""} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""} \
      ~{if defined(var_6) then ("-o " +  '"' + var_6 + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if (var_8) then "-O" else ""}
  >>>
  parameter_meta {
    s: ""
    w: ""
    e: ""
    t: ""
    q: ""
    p: ""
    var_6: ""
    i: ""
    var_8: ""
  }
  output {
    File out_stdout = stdout()
  }
}