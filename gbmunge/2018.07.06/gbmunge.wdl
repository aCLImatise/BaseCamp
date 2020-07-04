version 1.0

task Gbmunge {
  input {
    String? i
    String? f
    String? o
    Boolean? t
    Boolean? s
  }
  command <<<
    gbmunge \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{true="-t" false="" t} \
      ~{true="-s" false="" s}
  >>>
  parameter_meta {
    i: ""
    f: ""
    o: ""
    t: ""
    s: ""
  }
}