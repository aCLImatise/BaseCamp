version 1.0

task PgSAtest {
  input {
    Int? k
    String? r
    String? n
    String? c
    Boolean? p
    Boolean? s
    Boolean? f
    String? var_7
    String? repeats
    String? var_9
    String? test_km_ers
    String index_file
  }
  command <<<
    PgSAtest \
      ~{var_7} \
      ~{repeats} \
      ~{var_9} \
      ~{test_km_ers} \
      ~{index_file} \
      ~{if defined(k) then ("-k " +  '"' + k + '"') else ""} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""} \
      ~{if defined(n) then ("-n " +  '"' + n + '"') else ""} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""} \
      ~{true="-p" false="" p} \
      ~{true="-s" false="" s} \
      ~{true="-f" false="" f}
  >>>
  parameter_meta {
    k: ""
    r: ""
    n: ""
    c: ""
    p: ""
    s: ""
    f: ""
    var_7: ""
    repeats: ""
    var_9: ""
    test_km_ers: ""
    index_file: ""
  }
}