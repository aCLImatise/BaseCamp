version 1.0

task AbyssSealer {
  input {
    Boolean printPrintFlanks
    File inputInputScaffold
    String flankFlankLength
    String maxMaxGapLength
    String threadsThreads
    String kmKmEr
    String bloomBloomSize
    File dotDotFile
    Boolean fixFixErrors
    String maxMaxCost
    File inputInputBloom
    Boolean maskMask
    Boolean noNoMask
    Boolean chastityChastity
    Boolean noNoChastity
    Boolean trimTrimMasked
    Boolean noNoTrimMasked
    String flankFlankMismatches
    String maxMaxMismatches
    Boolean noNoLimits
    File outputOutputPrefix
    String maxMaxPaths
    String trimTrimQuality
    Boolean standardStandardQuality
    Boolean illuminaIlluminaQuality
    String readReadName
    String searchSearchMem
    File gapGapFile
    File traceTraceFile
    Boolean verboseVerbose
  }
  command <<<
    abyss-sealer \
      ~{true="--print-flanks" false="" printPrintFlanks} \
      ~{if defined(inputInputScaffold) then ("--input-scaffold " +  '"' + inputInputScaffold + '"') else ""} \
      ~{if defined(flankFlankLength) then ("--flank-length " +  '"' + flankFlankLength + '"') else ""} \
      ~{if defined(maxMaxGapLength) then ("--max-gap-length " +  '"' + maxMaxGapLength + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(kmKmEr) then ("--kmer " +  '"' + kmKmEr + '"') else ""} \
      ~{if defined(bloomBloomSize) then ("--bloom-size " +  '"' + bloomBloomSize + '"') else ""} \
      ~{if defined(dotDotFile) then ("--dot-file " +  '"' + dotDotFile + '"') else ""} \
      ~{true="--fix-errors" false="" fixFixErrors} \
      ~{if defined(maxMaxCost) then ("--max-cost " +  '"' + maxMaxCost + '"') else ""} \
      ~{if defined(inputInputBloom) then ("--input-bloom " +  '"' + inputInputBloom + '"') else ""} \
      ~{true="--mask" false="" maskMask} \
      ~{true="--no-mask" false="" noNoMask} \
      ~{true="--chastity" false="" chastityChastity} \
      ~{true="--no-chastity" false="" noNoChastity} \
      ~{true="--trim-masked" false="" trimTrimMasked} \
      ~{true="--no-trim-masked" false="" noNoTrimMasked} \
      ~{if defined(flankFlankMismatches) then ("--flank-mismatches " +  '"' + flankFlankMismatches + '"') else ""} \
      ~{if defined(maxMaxMismatches) then ("--max-mismatches " +  '"' + maxMaxMismatches + '"') else ""} \
      ~{true="--no-limits" false="" noNoLimits} \
      ~{if defined(outputOutputPrefix) then ("--output-prefix " +  '"' + outputOutputPrefix + '"') else ""} \
      ~{if defined(maxMaxPaths) then ("--max-paths " +  '"' + maxMaxPaths + '"') else ""} \
      ~{if defined(trimTrimQuality) then ("--trim-quality " +  '"' + trimTrimQuality + '"') else ""} \
      ~{true="--standard-quality" false="" standardStandardQuality} \
      ~{true="--illumina-quality" false="" illuminaIlluminaQuality} \
      ~{if defined(readReadName) then ("--read-name " +  '"' + readReadName + '"') else ""} \
      ~{if defined(searchSearchMem) then ("--search-mem " +  '"' + searchSearchMem + '"') else ""} \
      ~{if defined(gapGapFile) then ("--gap-file " +  '"' + gapGapFile + '"') else ""} \
      ~{if defined(traceTraceFile) then ("--trace-file " +  '"' + traceTraceFile + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}