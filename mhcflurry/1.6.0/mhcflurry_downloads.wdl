version 1.0

task MhcflurryDownloads {
  input {
    Boolean quietQuiet
    Boolean verboseVerbose
  }
  command <<<
    mhcflurry-downloads \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}