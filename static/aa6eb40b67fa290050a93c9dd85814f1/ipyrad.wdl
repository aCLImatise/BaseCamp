version 1.0

task Ipyrad {
  input {
    Boolean? v
    Boolean? r
    Boolean? f
    Boolean? q
    Boolean? d
    String? n
    String? p
    String? s
  }
  command <<<
    ipyrad \
      ~{true="-v" false="" v} \
      ~{true="-r" false="" r} \
      ~{true="-f" false="" f} \
      ~{true="-q" false="" q} \
      ~{true="-d" false="" d} \
      ~{if defined(n) then ("-n " +  '"' + n + '"') else ""} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""}
  >>>
  parameter_meta {
    v: ""
    r: ""
    f: ""
    q: ""
    d: ""
    n: ""
    p: ""
    s: ""
  }
}