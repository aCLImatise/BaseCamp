version 1.0

task RnaseqPeakfinder.pl {
  input {
    Boolean bgpBgpOs
    Boolean bgnBgnEg
    Boolean winsizeWinsize
    Boolean intervalInterval
    Boolean minMinCov
    Boolean lengthLength
    Boolean thresholdThreshold
    Boolean outOut
    Boolean manMan
  }
  command <<<
    rnaseq_peakfinder.pl \
      ~{true="--bgpos" false="" bgpBgpOs} \
      ~{true="--bgneg" false="" bgnBgnEg} \
      ~{true="--winsize" false="" winsizeWinsize} \
      ~{true="--interval" false="" intervalInterval} \
      ~{true="--mincov" false="" minMinCov} \
      ~{true="--length" false="" lengthLength} \
      ~{true="--threshold" false="" thresholdThreshold} \
      ~{true="--out" false="" outOut} \
      ~{true="--man" false="" manMan}
  >>>
}