version 1.0

task MaltRun {
  input {
    Boolean modeMode
    Boolean alignmentAlignmentType
    Boolean inInFile
    Boolean indexIndex
    Boolean outputOutput
    Boolean includeIncludeUnaligned
    Boolean alignmentsAlignments
    Boolean formatFormat
    Boolean gzipGzipAlignments
    Boolean samSamSoftClip
    Boolean sparseSparseSam
    Boolean outOutAligned
    Boolean gzipGzipAligned
    Boolean outOutUnaligned
    Boolean gzipGzipUnaligned
    Boolean numNumThreads
    Boolean memoryMemoryMode
    Boolean maxMaxTables
    Boolean replicateReplicateQueryCache
    Boolean minMinBitScore
    Boolean maxMaxExpected
    Boolean minMinPercentIdentity
    Boolean maxMaxAlignmentsPerQuery
    Boolean maxMaxAlignmentsPerRef
    Boolean matchMatchScore
    Boolean mismatchMismatchScore
    Boolean setSetLambda
    Boolean setSetK
    Boolean submatrixSubmatrix
    Boolean forwardForwardOnly
    Boolean reverseReverseOnly
    Boolean topTopPercent
    Boolean minMinSupportPercent
    Boolean minMinSupport
    Boolean minMinPercentIdentityLca
    Boolean useUseMinPercentIdentityFilterLca
    Boolean weightedWeightedLca
    Boolean lcaLcaCoveragePercent
    Boolean magnitudesMagnitudes
    Boolean conConFile
    Boolean maxMaxSeedsPerFrame
    Boolean maxMaxSeedsPerRef
    Boolean seedSeedShift
    Boolean gapGapOpen
    Boolean gapGapExtend
    Boolean bandBand
    Boolean replicateReplicateQueryCacheBits
    Boolean xXPart
    Boolean verboseVerbose
  }
  command <<<
    malt-run \
      ~{true="--mode" false="" modeMode} \
      ~{true="--alignmentType" false="" alignmentAlignmentType} \
      ~{true="--inFile" false="" inInFile} \
      ~{true="--index" false="" indexIndex} \
      ~{true="--output" false="" outputOutput} \
      ~{true="--includeUnaligned" false="" includeIncludeUnaligned} \
      ~{true="--alignments" false="" alignmentsAlignments} \
      ~{true="--format" false="" formatFormat} \
      ~{true="--gzipAlignments" false="" gzipGzipAlignments} \
      ~{true="--samSoftClip" false="" samSamSoftClip} \
      ~{true="--sparseSAM" false="" sparseSparseSam} \
      ~{true="--outAligned" false="" outOutAligned} \
      ~{true="--gzipAligned" false="" gzipGzipAligned} \
      ~{true="--outUnaligned" false="" outOutUnaligned} \
      ~{true="--gzipUnaligned" false="" gzipGzipUnaligned} \
      ~{true="--numThreads" false="" numNumThreads} \
      ~{true="--memoryMode" false="" memoryMemoryMode} \
      ~{true="--maxTables" false="" maxMaxTables} \
      ~{true="--replicateQueryCache" false="" replicateReplicateQueryCache} \
      ~{true="--minBitScore" false="" minMinBitScore} \
      ~{true="--maxExpected" false="" maxMaxExpected} \
      ~{true="--minPercentIdentity" false="" minMinPercentIdentity} \
      ~{true="--maxAlignmentsPerQuery" false="" maxMaxAlignmentsPerQuery} \
      ~{true="--maxAlignmentsPerRef" false="" maxMaxAlignmentsPerRef} \
      ~{true="--matchScore" false="" matchMatchScore} \
      ~{true="--mismatchScore" false="" mismatchMismatchScore} \
      ~{true="--setLambda" false="" setSetLambda} \
      ~{true="--setK" false="" setSetK} \
      ~{true="--subMatrix" false="" submatrixSubmatrix} \
      ~{true="--forwardOnly" false="" forwardForwardOnly} \
      ~{true="--reverseOnly" false="" reverseReverseOnly} \
      ~{true="--topPercent" false="" topTopPercent} \
      ~{true="--minSupportPercent" false="" minMinSupportPercent} \
      ~{true="--minSupport" false="" minMinSupport} \
      ~{true="--minPercentIdentityLCA" false="" minMinPercentIdentityLca} \
      ~{true="--useMinPercentIdentityFilterLCA" false="" useUseMinPercentIdentityFilterLca} \
      ~{true="--weightedLCA" false="" weightedWeightedLca} \
      ~{true="--lcaCoveragePercent" false="" lcaLcaCoveragePercent} \
      ~{true="--magnitudes" false="" magnitudesMagnitudes} \
      ~{true="--conFile" false="" conConFile} \
      ~{true="--maxSeedsPerFrame" false="" maxMaxSeedsPerFrame} \
      ~{true="--maxSeedsPerRef" false="" maxMaxSeedsPerRef} \
      ~{true="--seedShift" false="" seedSeedShift} \
      ~{true="--gapOpen" false="" gapGapOpen} \
      ~{true="--gapExtend" false="" gapGapExtend} \
      ~{true="--band" false="" bandBand} \
      ~{true="--replicateQueryCacheBits" false="" replicateReplicateQueryCacheBits} \
      ~{true="--xPart" false="" xXPart} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}