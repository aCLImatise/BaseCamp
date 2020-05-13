version 1.0

task Seeker.pl {
  input {
    Boolean iI
    Boolean outputOutput
    Boolean dirDir
    Boolean verboseVerbose
  }
  command <<<
    seeker.pl \
      ~{true="-i" false="" iI} \
      ~{true="--output" false="" outputOutput} \
      ~{true="--dir" false="" dirDir} \
      ~{true="-verbose" false="" verboseVerbose}
  >>>
}