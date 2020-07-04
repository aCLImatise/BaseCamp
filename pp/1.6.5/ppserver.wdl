version 1.0

task Ppserver.py {
  input {
    Boolean? hd_ar
    String? f
    String? n
    String? c
    Int? i
    String? b
    String? var_6
    String? w
    String? s
    String? t
    String? k
    String? var_11
  }
  command <<<
    ppserver.py \
      ~{true="-hdar" false="" hd_ar} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""} \
      ~{if defined(n) then ("-n " +  '"' + n + '"') else ""} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(b) then ("-b " +  '"' + b + '"') else ""} \
      ~{if defined(var_6) then ("-p " +  '"' + var_6 + '"') else ""} \
      ~{if defined(w) then ("-w " +  '"' + w + '"') else ""} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if defined(k) then ("-k " +  '"' + k + '"') else ""} \
      ~{if defined(var_11) then ("-P " +  '"' + var_11 + '"') else ""}
  >>>
  parameter_meta {
    hd_ar: ""
    f: ""
    n: ""
    c: ""
    i: ""
    b: ""
    var_6: ""
    w: ""
    s: ""
    t: ""
    k: ""
    var_11: ""
  }
}