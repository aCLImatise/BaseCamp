version 1.0

task TgStoreLoad {
  input {
    String? s
    String? t
    String v
    String? input_dot_cns
  }
  command <<<
    tgStoreLoad \
      ~{v} \
      ~{input_dot_cns} \
      ~{if defined(s) then ("-S " +  '"' + s + '"') else ""} \
      ~{if defined(t) then ("-T " +  '"' + t + '"') else ""}
  >>>
  parameter_meta {
    s: ""
    t: ""
    v: ""
    input_dot_cns: ""
  }
}