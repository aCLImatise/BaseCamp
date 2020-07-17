version 1.0

task PurgeHaplotigsPlace {
  input {
    String? p
    String? h
  }
  command <<<
    purge_haplotigs place \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""} \
      ~{if defined(h) then ("-h " +  '"' + h + '"') else ""}
  >>>
  parameter_meta {
    p: ""
    h: ""
  }
}