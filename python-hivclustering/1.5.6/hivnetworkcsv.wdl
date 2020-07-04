version 1.0

task Hivnetworkcsv {
  input {
    String? i
    String? u
    String? d
    String? c
  }
  command <<<
    hivnetworkcsv \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(u) then ("-u " +  '"' + u + '"') else ""} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""}
  >>>
  parameter_meta {
    i: ""
    u: ""
    d: ""
    c: ""
  }
}