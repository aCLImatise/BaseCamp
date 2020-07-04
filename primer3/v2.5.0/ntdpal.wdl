version 1.0

task Ntdpal {
  input {
    String? g
    String? l
    String? m
  }
  command <<<
    ntdpal \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""} \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""} \
      ~{if defined(m) then ("-m " +  '"' + m + '"') else ""}
  >>>
  parameter_meta {
    g: ""
    l: ""
    m: ""
  }
}