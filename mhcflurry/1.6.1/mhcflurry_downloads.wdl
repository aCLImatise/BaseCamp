version 1.0

task MhcflurryDownloads {
  input {
    Boolean? quiet
    Boolean? verbose
  }
  command <<<
    mhcflurry-downloads \
      ~{true="--quiet" false="" quiet} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    quiet: "Output less"
    verbose: "Output more"
  }
}