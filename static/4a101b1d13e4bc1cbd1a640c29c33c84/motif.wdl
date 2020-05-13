version 1.0

task Motif {
  input {
    Boolean verbosityVerbosity
    Boolean noNoLogging
  }
  command <<<
    motif \
      ~{true="--verbosity" false="" verbosityVerbosity} \
      ~{true="--no-logging" false="" noNoLogging}
  >>>
}