version 1.0

task DbStat {
  input {
    File? d
    Boolean? fn
    String? h
    String? p
    String? s
  }
  command <<<
    db_stat \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""} \
      ~{true="-fN" false="" fn} \
      ~{if defined(h) then ("-h " +  '"' + h + '"') else ""} \
      ~{if defined(p) then ("-P " +  '"' + p + '"') else ""} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""}
  >>>
  parameter_meta {
    d: ""
    fn: ""
    h: ""
    p: ""
    s: ""
  }
}