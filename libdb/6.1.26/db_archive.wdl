version 1.0

task DbArchive {
  input {
    Boolean? adls_vv
    String? h
    String? p
  }
  command <<<
    db_archive \
      ~{true="-adlsVv" false="" adls_vv} \
      ~{if defined(h) then ("-h " +  '"' + h + '"') else ""} \
      ~{if defined(p) then ("-P " +  '"' + p + '"') else ""}
  >>>
  parameter_meta {
    adls_vv: ""
    h: ""
    p: ""
  }
}