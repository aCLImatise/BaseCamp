version 1.0

task CmsearchToBed {
  input {
    Boolean verboseVerbose
    Boolean quietQuiet
  }
  command <<<
    cmsearchToBed \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--quiet" false="" quietQuiet}
  >>>
}