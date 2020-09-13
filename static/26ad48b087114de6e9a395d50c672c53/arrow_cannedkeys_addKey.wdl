version 1.0

task ArrowCannedkeysAddKey {
  input {
    String? metadata
    String key
  }
  command <<<
    arrow cannedkeys addKey \
      ~{key} \
      ~{if defined(metadata) then ("--metadata " +  '"' + metadata + '"') else ""}
  >>>
  parameter_meta {
    metadata: ""
    key: ""
  }
  output {
    File out_stdout = stdout()
  }
}