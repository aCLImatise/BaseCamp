version 1.0

task Effectivet3 {
  input {
    String? jar
    String? f
    String? m
    String? t
    String? o
    Boolean? q
    String java
    String or
  }
  command <<<
    effectivet3 \
      ~{java} \
      ~{or} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""} \
      ~{if defined(m) then ("-m " +  '"' + m + '"') else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{true="-q" false="" q}
  >>>
  parameter_meta {
    jar: ""
    f: ""
    m: ""
    t: ""
    o: ""
    q: ""
    java: ""
    or: ""
  }
}