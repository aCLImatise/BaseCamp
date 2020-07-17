version 1.0

task CmsearchToBed {
  input {
    Boolean? verbose
    Boolean? quiet
  }
  command <<<
    cmsearchToBed \
      ~{true="--verbose" false="" verbose} \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    verbose: "Loud verbosity"
    quiet: "Quiet verbosity"
  }
}