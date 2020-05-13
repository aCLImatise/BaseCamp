version 1.0

task Konnector {
  input {
    String threadsThreads
    String kmKmEr
    String bloomBloomSize
    String minMinCoverage
    String maxMaxCost
    File dotDotFile
    String dupDupBloomSize
    Boolean fixFixErrors
    Boolean extendExtend
    Boolean fastFastQ
    String minMinFrag
    String maxMaxFrag
    File inputInputBloom
    Boolean interleavedInterleaved
    Boolean maskMask
    Boolean noNoMask
    Boolean chastityChastity
    Boolean noNoChastity
    Boolean trimTrimMasked
    Boolean noNoTrimMasked
    String readReadMismatches
    String maxMaxMismatches
    Boolean noNoLimits
    File outputOutputPrefix
    Boolean preservePreserveReads
    Boolean altAltPathsMode
    String maxMaxPaths
    String trimTrimQuality
    Boolean standardStandardQuality
    Boolean illuminaIlluminaQuality
    Boolean correctedCorrectedQual
    String readReadName
    String searchSearchMem
    File traceTraceFile
    Boolean verboseVerbose
    String readReadIdentity
    String pathPathIdentity
  }
  command <<<
    konnector \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(kmKmEr) then ("--kmer " +  '"' + kmKmEr + '"') else ""} \
      ~{if defined(bloomBloomSize) then ("--bloom-size " +  '"' + bloomBloomSize + '"') else ""} \
      ~{if defined(minMinCoverage) then ("--min-coverage " +  '"' + minMinCoverage + '"') else ""} \
      ~{if defined(maxMaxCost) then ("--max-cost " +  '"' + maxMaxCost + '"') else ""} \
      ~{if defined(dotDotFile) then ("--dot-file " +  '"' + dotDotFile + '"') else ""} \
      ~{if defined(dupDupBloomSize) then ("--dup-bloom-size " +  '"' + dupDupBloomSize + '"') else ""} \
      ~{true="--fix-errors" false="" fixFixErrors} \
      ~{true="--extend" false="" extendExtend} \
      ~{true="--fastq" false="" fastFastQ} \
      ~{if defined(minMinFrag) then ("--min-frag " +  '"' + minMinFrag + '"') else ""} \
      ~{if defined(maxMaxFrag) then ("--max-frag " +  '"' + maxMaxFrag + '"') else ""} \
      ~{if defined(inputInputBloom) then ("--input-bloom " +  '"' + inputInputBloom + '"') else ""} \
      ~{true="--interleaved" false="" interleavedInterleaved} \
      ~{true="--mask" false="" maskMask} \
      ~{true="--no-mask" false="" noNoMask} \
      ~{true="--chastity" false="" chastityChastity} \
      ~{true="--no-chastity" false="" noNoChastity} \
      ~{true="--trim-masked" false="" trimTrimMasked} \
      ~{true="--no-trim-masked" false="" noNoTrimMasked} \
      ~{if defined(readReadMismatches) then ("--read-mismatches " +  '"' + readReadMismatches + '"') else ""} \
      ~{if defined(maxMaxMismatches) then ("--max-mismatches " +  '"' + maxMaxMismatches + '"') else ""} \
      ~{true="--no-limits" false="" noNoLimits} \
      ~{if defined(outputOutputPrefix) then ("--output-prefix " +  '"' + outputOutputPrefix + '"') else ""} \
      ~{true="--preserve-reads" false="" preservePreserveReads} \
      ~{true="--alt-paths-mode" false="" altAltPathsMode} \
      ~{if defined(maxMaxPaths) then ("--max-paths " +  '"' + maxMaxPaths + '"') else ""} \
      ~{if defined(trimTrimQuality) then ("--trim-quality " +  '"' + trimTrimQuality + '"') else ""} \
      ~{true="--standard-quality" false="" standardStandardQuality} \
      ~{true="--illumina-quality" false="" illuminaIlluminaQuality} \
      ~{true="--corrected-qual" false="" correctedCorrectedQual} \
      ~{if defined(readReadName) then ("--read-name " +  '"' + readReadName + '"') else ""} \
      ~{if defined(searchSearchMem) then ("--search-mem " +  '"' + searchSearchMem + '"') else ""} \
      ~{if defined(traceTraceFile) then ("--trace-file " +  '"' + traceTraceFile + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(readReadIdentity) then ("--read-identity " +  '"' + readReadIdentity + '"') else ""} \
      ~{if defined(pathPathIdentity) then ("--path-identity " +  '"' + pathPathIdentity + '"') else ""}
  >>>
}