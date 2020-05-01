version 1.0

task LocationPredictor {
  input {
    Boolean verbosityVerbosity
    Boolean noNoLogging
  }
  command <<<
    location_predictor \
      ~{true="--verbosity" false="" verbosityVerbosity} \
      ~{true="--no-logging" false="" noNoLogging}
  >>>
}