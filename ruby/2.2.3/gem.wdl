version 1.0

task Gem {
  input {
    Boolean? h_slash_help
  }
  command <<<
    gem \
      ~{true="-h/--help" false="" h_slash_help}
  >>>
  parameter_meta {
    h_slash_help: ""
  }
}