version 1.0

task TgStoreCompress {
  input {
    File? path_sequence_store
    File? path_tigstore_version
    String v
  }
  command <<<
    tgStoreCompress \
      ~{v} \
      ~{if defined(path_sequence_store) then ("-S " +  '"' + path_sequence_store + '"') else ""} \
      ~{if defined(path_tigstore_version) then ("-T " +  '"' + path_tigstore_version + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/canu:2.1.1--he1b5a44_1"
  }
  parameter_meta {
    path_sequence_store: "Path to a sequence store"
    path_tigstore_version: "<v>     Path to a tigStore and version to add tigs to"
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}