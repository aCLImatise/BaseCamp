version 1.0

task ReadFilter {
  input {
    Boolean unmappedUnmappedOnly
    Boolean flankFlankLength
    Boolean gapGapLength
    Boolean breakpointBreakpoint
    Boolean scaffoldScaffold
    Boolean stdStdDev
    Boolean meanMean
    Boolean readsReads
    Boolean bamBam
    Boolean nbNbCores
    Boolean verboseVerbose
    Boolean versionVersion
  }
  command <<<
    ReadFilter \
      ~{true="-unmapped-only" false="" unmappedUnmappedOnly} \
      ~{true="-flank-length" false="" flankFlankLength} \
      ~{true="-gap-length" false="" gapGapLength} \
      ~{true="-breakpoint" false="" breakpointBreakpoint} \
      ~{true="-scaffold" false="" scaffoldScaffold} \
      ~{true="-std-dev" false="" stdStdDev} \
      ~{true="-mean" false="" meanMean} \
      ~{true="-reads" false="" readsReads} \
      ~{true="-bam" false="" bamBam} \
      ~{true="-nb-cores" false="" nbNbCores} \
      ~{true="-verbose" false="" verboseVerbose} \
      ~{true="-version" false="" versionVersion}
  >>>
}