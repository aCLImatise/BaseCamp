version 1.0

task EventClusterer.py {
  input {
    String? d
    String? p
    String? st
  }
  command <<<
    eventClusterer.py \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""} \
      ~{if defined(st) then ("-st " +  '"' + st + '"') else ""}
  >>>
  parameter_meta {
    d: ""
    p: ""
    st: ""
  }
}