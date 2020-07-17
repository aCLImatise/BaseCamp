version 1.0

task PurgeHaplotigsPurge {
  input {
    String? g
    String? c
  }
  command <<<
    purge_haplotigs purge \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""}
  >>>
  parameter_meta {
    g: ""
    c: ""
  }
}