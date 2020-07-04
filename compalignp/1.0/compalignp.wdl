version 1.0

task Compalignp {
  input {
    Boolean? v
    Boolean? d
    String? r
    String? t
  }
  command <<<
    compalignp \
      ~{true="-v" false="" v} \
      ~{true="-d" false="" d} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""}
  >>>
  parameter_meta {
    v: ""
    d: ""
    r: ""
    t: ""
  }
}