version 1.0

task DBGraph2Pro {
  input {
    String? e
    String? s
    String? o
    Int? p
    Int? m
    Int? l
    String? k
    Boolean? u
    Boolean? c
  }
  command <<<
    DBGraph2Pro \
      ~{if defined(e) then ("-e " +  '"' + e + '"') else ""} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""} \
      ~{if defined(m) then ("-m " +  '"' + m + '"') else ""} \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""} \
      ~{if defined(k) then ("-k " +  '"' + k + '"') else ""} \
      ~{true="-u" false="" u} \
      ~{true="-c" false="" c}
  >>>
  parameter_meta {
    e: ""
    s: ""
    o: ""
    p: ""
    m: ""
    l: ""
    k: ""
    u: ""
    c: ""
  }
}