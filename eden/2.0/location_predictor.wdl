version 1.0

task LocationPredictor {
  input {
    Boolean? verbosity
    Boolean? no_logging
  }
  command <<<
    location_predictor \
      ~{if (verbosity) then "--verbosity" else ""} \
      ~{if (no_logging) then "--no-logging" else ""}
  >>>
  parameter_meta {
    verbosity: "Increase output verbosity (default: None)"
    no_logging: "If set, do not log on file. (default: False)"
  }
  output {
    File out_stdout = stdout()
  }
}