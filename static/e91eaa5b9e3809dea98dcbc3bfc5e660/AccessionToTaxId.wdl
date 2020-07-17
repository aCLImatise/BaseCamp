version 1.0

task AccessionToTaxId {
  input {
    Boolean? verbose
    Boolean? quiet
  }
  command <<<
    AccessionToTaxId \
      ~{true="--verbose" false="" verbose} \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    verbose: "Loud verbosity"
    quiet: "Quiet verbosity"
  }
}