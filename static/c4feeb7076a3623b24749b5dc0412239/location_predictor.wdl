version 1.0

task LocationPredictor {
  input {
    Boolean? verbosity
    Boolean? no_logging
  }
  command <<<
    location_predictor \
      ~{true="--verbosity" false="" verbosity} \
      ~{true="--no-logging" false="" no_logging}
  >>>
  parameter_meta {
    verbosity: "Increase output verbosity (default: None)"
    no_logging: "If set, do not log on file. (default: False)"
  }
}