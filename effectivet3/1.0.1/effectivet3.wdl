version 1.0

task Effectivet3 {
  input {
    Boolean? q
    File? o
    String? t
    String? m
    File? f
    String? jar
    String java
    String or
  }
  command <<<
    effectivet3 \
      ~{java} \
      ~{or} \
      ~{if (q) then "-q" else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if defined(m) then ("-m " +  '"' + m + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  parameter_meta {
    q: ""
    o: ""
    t: ""
    m: ""
    f: ""
    jar: ""
    java: ""
    or: ""
  }
  output {
    File out_stdout = stdout()
    File out_o = "${in_o}"
  }
}