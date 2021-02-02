version 1.0

task TgStoreCompress {
  input {
    File? path_sequence_store
    File? path_add_tigs
    String v
  }
  command <<<
    tgStoreCompress \
      ~{v} \
      ~{if defined(path_sequence_store) then ("-S " +  '"' + path_sequence_store + '"') else ""} \
      ~{if defined(path_add_tigs) then ("-T " +  '"' + path_add_tigs + '"') else ""}
  >>>
  parameter_meta {
    path_sequence_store: "Path to a sequence store"
    path_add_tigs: "<v>     Path to a tigStore and version to add tigs to"
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}