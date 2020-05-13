version 1.0

task CmsearchToBedBin {
  input {
    Boolean verboseVerbose
    Boolean quietQuiet
  }
  command <<<
    cmsearchToBed-bin \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--quiet" false="" quietQuiet}
  >>>
}