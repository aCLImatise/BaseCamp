version 1.0

task Dx {
  input {
    Boolean envEnvHelp
  }
  command <<<
    dx \
      ~{true="--env-help" false="" envEnvHelp}
  >>>
}