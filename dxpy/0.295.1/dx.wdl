version 1.0

task Dx {
  input {
    Boolean? env_help
    String dna_nexus
    String command_line
    String client
  }
  command <<<
    dx \
      ~{dna_nexus} \
      ~{command_line} \
      ~{client} \
      ~{true="--env-help" false="" env_help}
  >>>
  parameter_meta {
    env_help: "Display help message for overriding environment variables"
    dna_nexus: ""
    command_line: ""
    client: ""
  }
}