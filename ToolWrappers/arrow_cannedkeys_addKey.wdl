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
    metadata: "-h, --help       Show this message and exit.\\n"
    key: ""
  }
  output {
    File out_stdout = stdout()
  }
}