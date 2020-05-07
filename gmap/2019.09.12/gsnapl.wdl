version 1.0

task Gsnapl.sse42 {
  input {
    Directory dirDir
    String dbDb
    Int useUseLocalHash
    Directory transcriptTranscriptDir
    String transcriptTranscriptDb
    Boolean useUseTranscriptomeOnly
    Int kmKmEr
    Int samplingSampling
    Int partPart
    Int inputInputBufferSize
    Int barcodeBarcodeLength
    Int endEndTrimLength
    String orientationOrientation
    Int fastFastQIdStart
    Int fastFastQIdEnd
    Boolean forceForceSingleEnd
    String filterFilterChastity
    Boolean allowAllowPeNameMismatch
    Boolean interleavedInterleaved
    Boolean gunzipGunzip
    Boolean bunzip2Bunzip2
    Int useUseSharedMemory
    Boolean preloadPreloadSharedMemory
    Boolean unloadUnloadSharedMemory
    Float maxMaxMismatches
    Float minMinCoverage
    Int ignoreIgnoreTrimInFiltering
    Int queryQueryUnkMismatch
    Int genomeGenomeUnkMismatch
    Int inInDelPenalty
    Int inInDelEndLength
    Int maxMaxMiddleInsertions
    Int maxMaxMiddleDeletions
    Int maxMaxEndInsertions
    Int maxMaxEndDeletions
    Int suboptimalSuboptimalLevels
    String adapterAdapterStrip
    Int trimTrimInDelScore
    String snpsSnpsDir
    String useUseSnps
    String cCMetDir
    String atoiAtoiDir
    String modeMode
    Int nNThreads
    Int maxMaxAnchors
    Int findFindDnaChimeras
    Int novelNovelSplicing
    String splicingSplicingDir
    String useUseSplicing
    Boolean amAmBigSpliceNoClip
    Int localLocalSpliceDist
    Int novelNovelEndSpliceDist
    Int localLocalSplicePenalty
    Int distantDistantSplicePenalty
    Int distantDistantSpliceEndLength
    Int shortShortEndSpliceEndLength
    Float distantDistantSpliceIdentity
    Int antiAntiStrandedPenalty
    Boolean mergeMergeDistantSameChr
    Int pairPairMaxDna
    Int pairPairMaxRna
    Int pairPairExpect
    Int pairPairDev
    String qualityQualityProtocol
    Int qualityQualityZeroScore
    Int qualityQualityPrintShift
    Int nNPaths
    Boolean quietQuietIfExcessive
    Boolean orderedOrdered
    Boolean showShowRefDiff
    Boolean clipClipOverlap
    Boolean mergeMergeOverlap
    Boolean printPrintSnps
    Boolean failsFailsOnly
    Boolean noNoFails
    String formatFormat
    String splitSplitOutput
    String outputOutputFile
    String failedFailedInput
    Boolean appendAppendOutput
    String orderOrderAmongBest
    Int outputOutputBufferSize
    Int samSamHeadersBatch
    Boolean samSamHardClipUseS
    Boolean samSamUse0m
    Boolean samSamExtendedCigar
    Boolean samSamMultiplePrimaries
    Boolean samSamSparseSecondaries
    Boolean forceForceXsDir
    Boolean mdMdLowercaseSnp
    Boolean extendExtendSoftClips
    Boolean actionActionIfCigarError
    String readReadGroupId
    String readReadGroupName
    String readReadGroupLibrary
    String readReadGroupPlatform
    Boolean checkCheck
  }
  command <<<
    gsnapl.sse42 \
      ~{if defined(dirDir) then ("--dir " +  '"' + dirDir + '"') else ""} \
      ~{if defined(dbDb) then ("--db " +  '"' + dbDb + '"') else ""} \
      ~{if defined(useUseLocalHash) then ("--use-local-hash " +  '"' + useUseLocalHash + '"') else ""} \
      ~{if defined(transcriptTranscriptDir) then ("--transcriptdir " +  '"' + transcriptTranscriptDir + '"') else ""} \
      ~{if defined(transcriptTranscriptDb) then ("--transcriptdb " +  '"' + transcriptTranscriptDb + '"') else ""} \
      ~{true="--use-transcriptome-only" false="" useUseTranscriptomeOnly} \
      ~{if defined(kmKmEr) then ("--kmer " +  '"' + kmKmEr + '"') else ""} \
      ~{if defined(samplingSampling) then ("--sampling " +  '"' + samplingSampling + '"') else ""} \
      ~{if defined(partPart) then ("--part " +  '"' + partPart + '"') else ""} \
      ~{if defined(inputInputBufferSize) then ("--input-buffer-size " +  '"' + inputInputBufferSize + '"') else ""} \
      ~{if defined(barcodeBarcodeLength) then ("--barcode-length " +  '"' + barcodeBarcodeLength + '"') else ""} \
      ~{if defined(endEndTrimLength) then ("--endtrim-length " +  '"' + endEndTrimLength + '"') else ""} \
      ~{if defined(orientationOrientation) then ("--orientation " +  '"' + orientationOrientation + '"') else ""} \
      ~{if defined(fastFastQIdStart) then ("--fastq-id-start " +  '"' + fastFastQIdStart + '"') else ""} \
      ~{if defined(fastFastQIdEnd) then ("--fastq-id-end " +  '"' + fastFastQIdEnd + '"') else ""} \
      ~{true="--force-single-end" false="" forceForceSingleEnd} \
      ~{if defined(filterFilterChastity) then ("--filter-chastity " +  '"' + filterFilterChastity + '"') else ""} \
      ~{true="--allow-pe-name-mismatch" false="" allowAllowPeNameMismatch} \
      ~{true="--interleaved" false="" interleavedInterleaved} \
      ~{true="--gunzip" false="" gunzipGunzip} \
      ~{true="--bunzip2" false="" bunzip2Bunzip2} \
      ~{if defined(useUseSharedMemory) then ("--use-shared-memory " +  '"' + useUseSharedMemory + '"') else ""} \
      ~{true="--preload-shared-memory" false="" preloadPreloadSharedMemory} \
      ~{true="--unload-shared-memory" false="" unloadUnloadSharedMemory} \
      ~{if defined(maxMaxMismatches) then ("--max-mismatches " +  '"' + maxMaxMismatches + '"') else ""} \
      ~{if defined(minMinCoverage) then ("--min-coverage " +  '"' + minMinCoverage + '"') else ""} \
      ~{if defined(ignoreIgnoreTrimInFiltering) then ("--ignore-trim-in-filtering " +  '"' + ignoreIgnoreTrimInFiltering + '"') else ""} \
      ~{if defined(queryQueryUnkMismatch) then ("--query-unk-mismatch " +  '"' + queryQueryUnkMismatch + '"') else ""} \
      ~{if defined(genomeGenomeUnkMismatch) then ("--genome-unk-mismatch " +  '"' + genomeGenomeUnkMismatch + '"') else ""} \
      ~{if defined(inInDelPenalty) then ("--indel-penalty " +  '"' + inInDelPenalty + '"') else ""} \
      ~{if defined(inInDelEndLength) then ("--indel-endlength " +  '"' + inInDelEndLength + '"') else ""} \
      ~{if defined(maxMaxMiddleInsertions) then ("--max-middle-insertions " +  '"' + maxMaxMiddleInsertions + '"') else ""} \
      ~{if defined(maxMaxMiddleDeletions) then ("--max-middle-deletions " +  '"' + maxMaxMiddleDeletions + '"') else ""} \
      ~{if defined(maxMaxEndInsertions) then ("--max-end-insertions " +  '"' + maxMaxEndInsertions + '"') else ""} \
      ~{if defined(maxMaxEndDeletions) then ("--max-end-deletions " +  '"' + maxMaxEndDeletions + '"') else ""} \
      ~{if defined(suboptimalSuboptimalLevels) then ("--suboptimal-levels " +  '"' + suboptimalSuboptimalLevels + '"') else ""} \
      ~{if defined(adapterAdapterStrip) then ("--adapter-strip " +  '"' + adapterAdapterStrip + '"') else ""} \
      ~{if defined(trimTrimInDelScore) then ("--trim-indel-score " +  '"' + trimTrimInDelScore + '"') else ""} \
      ~{if defined(snpsSnpsDir) then ("--snpsdir " +  '"' + snpsSnpsDir + '"') else ""} \
      ~{if defined(useUseSnps) then ("--use-snps " +  '"' + useUseSnps + '"') else ""} \
      ~{if defined(cCMetDir) then ("--cmetdir " +  '"' + cCMetDir + '"') else ""} \
      ~{if defined(atoiAtoiDir) then ("--atoidir " +  '"' + atoiAtoiDir + '"') else ""} \
      ~{if defined(modeMode) then ("--mode " +  '"' + modeMode + '"') else ""} \
      ~{if defined(nNThreads) then ("--nthreads " +  '"' + nNThreads + '"') else ""} \
      ~{if defined(maxMaxAnchors) then ("--max-anchors " +  '"' + maxMaxAnchors + '"') else ""} \
      ~{if defined(findFindDnaChimeras) then ("--find-dna-chimeras " +  '"' + findFindDnaChimeras + '"') else ""} \
      ~{if defined(novelNovelSplicing) then ("--novelsplicing " +  '"' + novelNovelSplicing + '"') else ""} \
      ~{if defined(splicingSplicingDir) then ("--splicingdir " +  '"' + splicingSplicingDir + '"') else ""} \
      ~{if defined(useUseSplicing) then ("--use-splicing " +  '"' + useUseSplicing + '"') else ""} \
      ~{true="--ambig-splice-noclip" false="" amAmBigSpliceNoClip} \
      ~{if defined(localLocalSpliceDist) then ("--localsplicedist " +  '"' + localLocalSpliceDist + '"') else ""} \
      ~{if defined(novelNovelEndSpliceDist) then ("--novelend-splicedist " +  '"' + novelNovelEndSpliceDist + '"') else ""} \
      ~{if defined(localLocalSplicePenalty) then ("--local-splice-penalty " +  '"' + localLocalSplicePenalty + '"') else ""} \
      ~{if defined(distantDistantSplicePenalty) then ("--distant-splice-penalty " +  '"' + distantDistantSplicePenalty + '"') else ""} \
      ~{if defined(distantDistantSpliceEndLength) then ("--distant-splice-endlength " +  '"' + distantDistantSpliceEndLength + '"') else ""} \
      ~{if defined(shortShortEndSpliceEndLength) then ("--shortend-splice-endlength " +  '"' + shortShortEndSpliceEndLength + '"') else ""} \
      ~{if defined(distantDistantSpliceIdentity) then ("--distant-splice-identity " +  '"' + distantDistantSpliceIdentity + '"') else ""} \
      ~{if defined(antiAntiStrandedPenalty) then ("--antistranded-penalty " +  '"' + antiAntiStrandedPenalty + '"') else ""} \
      ~{true="--merge-distant-samechr" false="" mergeMergeDistantSameChr} \
      ~{if defined(pairPairMaxDna) then ("--pairmax-dna " +  '"' + pairPairMaxDna + '"') else ""} \
      ~{if defined(pairPairMaxRna) then ("--pairmax-rna " +  '"' + pairPairMaxRna + '"') else ""} \
      ~{if defined(pairPairExpect) then ("--pairexpect " +  '"' + pairPairExpect + '"') else ""} \
      ~{if defined(pairPairDev) then ("--pairdev " +  '"' + pairPairDev + '"') else ""} \
      ~{if defined(qualityQualityProtocol) then ("--quality-protocol " +  '"' + qualityQualityProtocol + '"') else ""} \
      ~{if defined(qualityQualityZeroScore) then ("--quality-zero-score " +  '"' + qualityQualityZeroScore + '"') else ""} \
      ~{if defined(qualityQualityPrintShift) then ("--quality-print-shift " +  '"' + qualityQualityPrintShift + '"') else ""} \
      ~{if defined(nNPaths) then ("--npaths " +  '"' + nNPaths + '"') else ""} \
      ~{true="--quiet-if-excessive" false="" quietQuietIfExcessive} \
      ~{true="--ordered" false="" orderedOrdered} \
      ~{true="--show-refdiff" false="" showShowRefDiff} \
      ~{true="--clip-overlap" false="" clipClipOverlap} \
      ~{true="--merge-overlap" false="" mergeMergeOverlap} \
      ~{true="--print-snps" false="" printPrintSnps} \
      ~{true="--failsonly" false="" failsFailsOnly} \
      ~{true="--nofails" false="" noNoFails} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{if defined(splitSplitOutput) then ("--split-output " +  '"' + splitSplitOutput + '"') else ""} \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""} \
      ~{if defined(failedFailedInput) then ("--failed-input " +  '"' + failedFailedInput + '"') else ""} \
      ~{true="--append-output" false="" appendAppendOutput} \
      ~{if defined(orderOrderAmongBest) then ("--order-among-best " +  '"' + orderOrderAmongBest + '"') else ""} \
      ~{if defined(outputOutputBufferSize) then ("--output-buffer-size " +  '"' + outputOutputBufferSize + '"') else ""} \
      ~{if defined(samSamHeadersBatch) then ("--sam-headers-batch " +  '"' + samSamHeadersBatch + '"') else ""} \
      ~{true="--sam-hardclip-use-S" false="" samSamHardClipUseS} \
      ~{true="--sam-use-0M" false="" samSamUse0m} \
      ~{true="--sam-extended-cigar" false="" samSamExtendedCigar} \
      ~{true="--sam-multiple-primaries" false="" samSamMultiplePrimaries} \
      ~{true="--sam-sparse-secondaries" false="" samSamSparseSecondaries} \
      ~{true="--force-xs-dir" false="" forceForceXsDir} \
      ~{true="--md-lowercase-snp" false="" mdMdLowercaseSnp} \
      ~{true="--extend-soft-clips" false="" extendExtendSoftClips} \
      ~{true="--action-if-cigar-error" false="" actionActionIfCigarError} \
      ~{if defined(readReadGroupId) then ("--read-group-id " +  '"' + readReadGroupId + '"') else ""} \
      ~{if defined(readReadGroupName) then ("--read-group-name " +  '"' + readReadGroupName + '"') else ""} \
      ~{if defined(readReadGroupLibrary) then ("--read-group-library " +  '"' + readReadGroupLibrary + '"') else ""} \
      ~{if defined(readReadGroupPlatform) then ("--read-group-platform " +  '"' + readReadGroupPlatform + '"') else ""} \
      ~{true="--check" false="" checkCheck}
  >>>
}