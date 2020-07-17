version 1.0

task Pbdagcon {
  input {
    Boolean? v
    Boolean? a
    String? t
    String? m
    String? c
    Int? j
    String pbd_agc_on
  }
  command <<<
    pbdagcon \
      ~{pbd_agc_on} \
      ~{true="-v" false="" v} \
      ~{true="-a" false="" a} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if defined(m) then ("-m " +  '"' + m + '"') else ""} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""} \
      ~{if defined(j) then ("-j " +  '"' + j + '"') else ""}
  >>>
  parameter_meta {
    v: ""
    a: ""
    t: ""
    m: ""
    c: ""
    j: ""
    pbd_agc_on: "[-v] [-a] [-t <uint>] [-m <uint>] [-c <uint>] [-j <int>] [--] [--version] [-h] <either file path or stdin>"
  }
}