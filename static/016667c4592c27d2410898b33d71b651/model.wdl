version 1.0

task Model {
  input {
    Boolean verbosityVerbosity
    Boolean noNoLogging
  }
  command <<<
    model \
      ~{true="--verbosity" false="" verbosityVerbosity} \
      ~{true="--no-logging" false="" noNoLogging}
  >>>
}