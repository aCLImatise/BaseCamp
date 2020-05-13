version 1.0

task CanSNPs.pl {
  input {
    Boolean thresholdThreshold
    Boolean symbolSymbol
  }
  command <<<
    CanSNPs.pl \
      ~{true="--threshold" false="" thresholdThreshold} \
      ~{true="--symbol" false="" symbolSymbol}
  >>>
}