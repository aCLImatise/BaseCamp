version 1.0

task RnaclustScores2Dist.pl {
  input {
    Boolean manMan
    Boolean verboseVerbose
    Boolean quietQuiet
    Boolean quantileQuantile
  }
  command <<<
    rnaclustScores2Dist.pl \
      ~{true="--man" false="" manMan} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--quantile" false="" quantileQuantile}
  >>>
}