version 1.0

task PeakrangerLc {
  input {
    Boolean dD
    Boolean verboseVerbose
  }
  command <<<
    peakranger lc \
      ~{true="-d" false="" dD} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}