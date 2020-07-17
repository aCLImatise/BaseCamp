version 1.0

task DbTuner {
  input {
    String? c
    File? d
    String? h
    String? s
    String? v
  }
  command <<<
    db_tuner \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""} \
      ~{if defined(h) then ("-h " +  '"' + h + '"') else ""} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""} \
      ~{if defined(v) then ("-v " +  '"' + v + '"') else ""}
  >>>
  parameter_meta {
    c: ""
    d: ""
    h: ""
    s: ""
    v: ""
  }
}