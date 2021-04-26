version 1.0

task ArrowCannedkeysUpdateKey {
  input {
    String? metadata
    String id_number
    String new_key
  }
  command <<<
    arrow cannedkeys update_key \
      ~{id_number} \
      ~{new_key} \
      ~{if defined(metadata) then ("--metadata " +  '"' + metadata + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/apollo:4.2.11--pyh5e36f6f_0"
  }
  parameter_meta {
    metadata: "Optional metadata"
    id_number: ""
    new_key: ""
  }
  output {
    File out_stdout = stdout()
  }
}