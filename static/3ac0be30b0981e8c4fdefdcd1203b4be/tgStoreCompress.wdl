version 1.0

task TgStoreCompress {
  input {
    String? s
    String? t
    String v
  }
  command <<<
    tgStoreCompress \
      ~{v} \
      ~{if defined(s) then ("-S " +  '"' + s + '"') else ""} \
      ~{if defined(t) then ("-T " +  '"' + t + '"') else ""}
  >>>
  parameter_meta {
    s: ""
    t: ""
    v: ""
  }
}