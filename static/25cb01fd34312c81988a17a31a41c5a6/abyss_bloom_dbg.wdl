version 1.0

task AbyssBloomDbg {
  input {
    String bloomBloomSize
    Boolean chastityChastity
    Boolean noNoChastity
    File graphGraph
    String numNumHashes
    File inputInputBloom
    String threadsThreads
    Boolean trimTrimMasked
    Boolean noNoTrimMasked
    String kmKmEr
    String kcKc
    File outOut
    String trimTrimQuality
    String maskMaskQuality
    Boolean standardStandardQuality
    Boolean illuminaIlluminaQuality
    String trimTrimLength
    Boolean verboseVerbose
    String singleSingleKmEr
    String qrQrSeed
    String spacedSpacedSeed
    File covCovTrack
    File readReadLog
    File refRef
    File traceTraceFile
    String checkpointCheckpoint
    Boolean keepKeepCheckpoint
    String checkpointCheckpointPrefix
  }
  command <<<
    abyss-bloom-dbg \
      ~{if defined(bloomBloomSize) then ("--bloom-size " +  '"' + bloomBloomSize + '"') else ""} \
      ~{true="--chastity" false="" chastityChastity} \
      ~{true="--no-chastity" false="" noNoChastity} \
      ~{if defined(graphGraph) then ("--graph " +  '"' + graphGraph + '"') else ""} \
      ~{if defined(numNumHashes) then ("--num-hashes " +  '"' + numNumHashes + '"') else ""} \
      ~{if defined(inputInputBloom) then ("--input-bloom " +  '"' + inputInputBloom + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--trim-masked" false="" trimTrimMasked} \
      ~{true="--no-trim-masked" false="" noNoTrimMasked} \
      ~{if defined(kmKmEr) then ("--kmer " +  '"' + kmKmEr + '"') else ""} \
      ~{if defined(kcKc) then ("--kc " +  '"' + kcKc + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(trimTrimQuality) then ("--trim-quality " +  '"' + trimTrimQuality + '"') else ""} \
      ~{if defined(maskMaskQuality) then ("--mask-quality " +  '"' + maskMaskQuality + '"') else ""} \
      ~{true="--standard-quality" false="" standardStandardQuality} \
      ~{true="--illumina-quality" false="" illuminaIlluminaQuality} \
      ~{if defined(trimTrimLength) then ("--trim-length " +  '"' + trimTrimLength + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(singleSingleKmEr) then ("--single-kmer " +  '"' + singleSingleKmEr + '"') else ""} \
      ~{if defined(qrQrSeed) then ("--qr-seed " +  '"' + qrQrSeed + '"') else ""} \
      ~{if defined(spacedSpacedSeed) then ("--spaced-seed " +  '"' + spacedSpacedSeed + '"') else ""} \
      ~{if defined(covCovTrack) then ("--cov-track " +  '"' + covCovTrack + '"') else ""} \
      ~{if defined(readReadLog) then ("--read-log " +  '"' + readReadLog + '"') else ""} \
      ~{if defined(refRef) then ("--ref " +  '"' + refRef + '"') else ""} \
      ~{if defined(traceTraceFile) then ("--trace-file " +  '"' + traceTraceFile + '"') else ""} \
      ~{if defined(checkpointCheckpoint) then ("--checkpoint " +  '"' + checkpointCheckpoint + '"') else ""} \
      ~{true="--keep-checkpoint" false="" keepKeepCheckpoint} \
      ~{if defined(checkpointCheckpointPrefix) then ("--checkpoint-prefix " +  '"' + checkpointCheckpointPrefix + '"') else ""}
  >>>
}