version 1.0

task Mutscan {
  input {
    Boolean simplifiedSimplified
    Boolean verboseVerbose
  }
  command <<<
    mutscan \
      ~{true="--simplified" false="" simplifiedSimplified} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}