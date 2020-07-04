version 1.0

task FastxTrimmer {
  input {
    String? f
    String? l
    String? t
    Int? m
    Boolean? z
    Boolean? v
    String? i
    String? o
  }
  command <<<
    fastx_trimmer \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""} \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if defined(m) then ("-m " +  '"' + m + '"') else ""} \
      ~{true="-z" false="" z} \
      ~{true="-v" false="" v} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    f: ""
    l: ""
    t: ""
    m: ""
    z: ""
    v: ""
    i: ""
    o: ""
  }
}