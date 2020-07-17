version 1.0

task PurgeHaplotigsHist {
  input {
    String? b
    String? g
    String? t
  }
  command <<<
    purge_haplotigs hist \
      ~{if defined(b) then ("-b " +  '"' + b + '"') else ""} \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""}
  >>>
  parameter_meta {
    b: ""
    g: ""
    t: ""
  }
}