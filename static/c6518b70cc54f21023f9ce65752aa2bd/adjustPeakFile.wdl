version 1.0

task AdjustPeakFile.pl {
  input {
    Boolean endsEnds
    Boolean flipFlipStrand
    Boolean minMin
    Boolean maxMax
  }
  command <<<
    adjustPeakFile.pl \
      ~{true="-ends" false="" endsEnds} \
      ~{true="-flipStrand" false="" flipFlipStrand} \
      ~{true="-min" false="" minMin} \
      ~{true="-max" false="" maxMax}
  >>>
}