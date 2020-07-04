version 1.0

task DbPrintlog {
  input {
    Boolean? nrv
    File? b
    String? d
    File? e
    String? h
    String? p
  }
  command <<<
    db_printlog \
      ~{true="-NrV" false="" nrv} \
      ~{if defined(b) then ("-b " +  '"' + b + '"') else ""} \
      ~{if defined(d) then ("-D " +  '"' + d + '"') else ""} \
      ~{if defined(e) then ("-e " +  '"' + e + '"') else ""} \
      ~{if defined(h) then ("-h " +  '"' + h + '"') else ""} \
      ~{if defined(p) then ("-P " +  '"' + p + '"') else ""}
  >>>
  parameter_meta {
    nrv: ""
    b: ""
    d: ""
    e: ""
    h: ""
    p: ""
  }
}