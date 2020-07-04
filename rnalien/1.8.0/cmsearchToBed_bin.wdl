version 1.0

task CmsearchToBedBin {
  input {
    Boolean? verbose
    Boolean? quiet
  }
  command <<<
    cmsearchToBed-bin \
      ~{true="--verbose" false="" verbose} \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    verbose: "Loud verbosity"
    quiet: "Quiet verbosity"
  }
}