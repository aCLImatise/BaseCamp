version 1.0

task DbRecover {
  input {
    Boolean? cef_vv
    String? h
    String? b
    String? p
  }
  command <<<
    db_recover \
      ~{true="-cefVv" false="" cef_vv} \
      ~{if defined(h) then ("-h " +  '"' + h + '"') else ""} \
      ~{if defined(b) then ("-b " +  '"' + b + '"') else ""} \
      ~{if defined(p) then ("-P " +  '"' + p + '"') else ""}
  >>>
  parameter_meta {
    cef_vv: ""
    h: ""
    b: ""
    p: ""
  }
}