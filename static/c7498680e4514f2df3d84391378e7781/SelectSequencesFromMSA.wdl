version 1.0

task SelectSequencesFromMSA {
  input {
    Boolean? verbose
    Boolean? quiet
  }
  command <<<
    SelectSequencesFromMSA \
      ~{true="--verbose" false="" verbose} \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    verbose: "Loud verbosity"
    quiet: "Quiet verbosity"
  }
}