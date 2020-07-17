version 1.0

task Model {
  input {
    Boolean? verbosity
    Boolean? no_logging
  }
  command <<<
    model \
      ~{true="--verbosity" false="" verbosity} \
      ~{true="--no-logging" false="" no_logging}
  >>>
  parameter_meta {
    verbosity: "Increase output verbosity (default: None)"
    no_logging: "If set, do not log on file. (default: False)"
  }
}