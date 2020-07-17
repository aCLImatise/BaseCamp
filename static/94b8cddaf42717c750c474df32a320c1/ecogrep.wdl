version 1.0

task Ecogrep {
  input {
    String? d
    String? p
    String? i
    String? r
    Boolean? v
    File file_name
  }
  command <<<
    ecogrep \
      ~{file_name} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""} \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    d: ""
    p: ""
    i: ""
    r: ""
    v: ""
    file_name: ""
  }
}