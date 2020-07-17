version 1.0

task RNAsoup {
  input {
    String? t
    String? f
    String? m
    String? o
    String? k
    Boolean? v
  }
  command <<<
    RNAsoup \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""} \
      ~{if defined(m) then ("-m " +  '"' + m + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(k) then ("-k " +  '"' + k + '"') else ""} \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    t: ""
    f: ""
    m: ""
    o: ""
    k: ""
    v: ""
  }
}