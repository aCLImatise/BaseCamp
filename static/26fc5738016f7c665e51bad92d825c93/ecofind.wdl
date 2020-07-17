version 1.0

task Ecofind {
  input {
    String? d
    Boolean? l
    Boolean? var_2
    String? r
    String? var_4
    String? s
    String? rank
    String type
  }
  command <<<
    ecofind \
      ~{rank} \
      ~{type} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""} \
      ~{true="-l" false="" l} \
      ~{true="-P" false="" var_2} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""} \
      ~{if defined(var_4) then ("-p " +  '"' + var_4 + '"') else ""} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""}
  >>>
  parameter_meta {
    d: ""
    l: ""
    var_2: ""
    r: ""
    var_4: ""
    s: ""
    rank: ""
    type: ""
  }
}