version 1.0

task PurgeHaplotigsClip {
  input {
    String? p
    String? h
  }
  command <<<
    purge_haplotigs clip \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""} \
      ~{if defined(h) then ("-h " +  '"' + h + '"') else ""}
  >>>
  parameter_meta {
    p: ""
    h: ""
  }
}