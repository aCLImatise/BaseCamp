version 1.0

task ArrowCannedkeysAddKey {
  input {
    String? metadata
    String key
  }
  command <<<
    arrow cannedkeys add_key \
      ~{key} \
      ~{if defined(metadata) then ("--metadata " +  '"' + metadata + '"') else ""}
  >>>
  parameter_meta {
    metadata: "Optional metadata"
    key: ""
  }
  output {
    File out_stdout = stdout()
  }
}