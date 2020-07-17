version 1.0

task Dazcon {
  input {
    Boolean? v
    Boolean? o
    Boolean? x
    String? m
    String? s
    String? a
    String? t
    String daz_con
  }
  command <<<
    dazcon \
      ~{daz_con} \
      ~{true="-v" false="" v} \
      ~{true="-o" false="" o} \
      ~{true="-x" false="" x} \
      ~{if defined(m) then ("-m " +  '"' + m + '"') else ""} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""} \
      ~{if defined(a) then ("-a " +  '"' + a + '"') else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""}
  >>>
  parameter_meta {
    v: ""
    o: ""
    x: ""
    m: ""
    s: ""
    a: ""
    t: ""
    daz_con: "[-v] [-o] [-x] [-m <uint>] -s <string> -a <string> [-t <uint>] [-l <uint>] [-c <uint>] [-j <int>] [--] [--version] [-h] <list of ints> ..."
  }
}