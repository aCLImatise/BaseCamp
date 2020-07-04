version 1.0

task TNS {
  input {
    String? i
    String? u
    String? d
    String? c
    String? t
  }
  command <<<
    TNS \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(u) then ("-u " +  '"' + u + '"') else ""} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""}
  >>>
  parameter_meta {
    i: ""
    u: ""
    d: ""
    c: ""
    t: ""
  }
}