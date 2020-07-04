version 1.0

task DBGraphPep2Pro {
  input {
    String? e
    String? s
    String? p
    String? n
    String? o
    String? k
    Boolean? u
    Boolean? c
  }
  command <<<
    DBGraphPep2Pro \
      ~{if defined(e) then ("-e " +  '"' + e + '"') else ""} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""} \
      ~{if defined(n) then ("-n " +  '"' + n + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(k) then ("-k " +  '"' + k + '"') else ""} \
      ~{true="-u" false="" u} \
      ~{true="-c" false="" c}
  >>>
  parameter_meta {
    e: ""
    s: ""
    p: ""
    n: ""
    o: ""
    k: ""
    u: ""
    c: ""
  }
}