version 1.0

task FastxTrimmer {
  input {
    String? o
    File? i
    Boolean? v
    Boolean? z
    Int? m
    String? t
    String? l
    String? f
  }
  command <<<
    fastx_trimmer \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if (v) then "-v" else ""} \
      ~{if (z) then "-z" else ""} \
      ~{if defined(m) then ("-m " +  '"' + m + '"') else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""}
  >>>
  parameter_meta {
    o: ""
    i: ""
    v: ""
    z: ""
    m: ""
    t: ""
    l: ""
    f: ""
  }
  output {
    File out_stdout = stdout()
  }
}