version 1.0

task Mgaps {
  input {
    String? d
    String? f
    String? l
  }
  command <<<
    mgaps \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""} \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""}
  >>>
  parameter_meta {
    d: ""
    f: ""
    l: ""
  }
}