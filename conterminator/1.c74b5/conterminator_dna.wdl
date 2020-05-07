version 1.0

task ConterminatorDna {
  input {
    Int compCompBiasCorr
    Boolean addAddSelfMatches
    String seedSeedSubMat
    Float sS
    Int kK
    Int kKScore
    Int alphAlphSize
    Int splitSplit
    Int splitSplitMode
    Boolean diagDiagScore
    Int exactExactKmErMatching
    Int maskMask
    Int maskMaskLowerCase
    Int minMinUnGappedScore
    Int spacedSpacedKmErMode
    String spacedSpacedKmErPattern
    String localLocalTmp
    String diskDiskSpaceLimit
    Boolean aA
    Int alignmentAlignmentMode
    Float eE
    Float minMinSeqId
    Int minMinAlnLen
    Int seqSeqIdMode
    Int altAltAli
    Float cC
    Int covCovMode
    Boolean realignRealign
    Int maxMaxRejected
    Int maxMaxAccept
    Float scoreScoreBias
    Int gapGapOpen
    Int gapGapExtend
    Float pcPcA
    Float pcbPcb
    Int maskMaskProfile
    Float eEProfile
    Boolean wgWg
    Int filterFilterMsa
    Float maxMaxSeqId
    Float qidQid
    Float qscQsc
    Float covCov
    Int diffDiff
    Int numNumIterations
    Boolean sliceSliceSearch
    Boolean wrappedWrappedScoring
    Int reReScoreMode
    Boolean allowAllowDeletion
    Int minMinLength
    Int maxMaxLength
    Int maxMaxGaps
    Int contigContigStartMode
    Int contigContigEndMode
    Int orfOrfStartMode
    String forwardForwardFrames
    String reverseReverseFrames
    Int translationTranslationTable
    Int translateTranslate
    Boolean useUseAllTableStarts
    Int idIdOffset
    Boolean addAddOrfStop
    Int searchSearchType
    Float startStartSens
    Int sensSensSteps
    Boolean removeRemoveTmpFiles
    Int dbtypeDbtype
    Boolean shuffleShuffle
    Int createdCreatedBMode
    String ncbiNcbiTaxDump
    String taxTaxMappingFile
    String blacklistBlacklist
    String kingdomsKingdoms
    String subSubMat
    Int maxMaxSeqLen
    Int dbDbLoadMode
    Int threadsThreads
    Int compressedCompressed
    Int vV
    String splitSplitMemoryLimit
    String mpiMpiRunner
    Boolean forceForceReuse
    Boolean filterFilterHits
    Int sortSortResults
    Boolean omitOmitConsensus
    Int createCreateLookup
    Int chainChainAlignments
    Int mergeMergeQuery
    Int strandStrand
    String steinSteinEgger
  }
  command <<<
    conterminator dna \
      ~{if defined(compCompBiasCorr) then ("--comp-bias-corr " +  '"' + compCompBiasCorr + '"') else ""} \
      ~{true="--add-self-matches" false="" addAddSelfMatches} \
      ~{if defined(seedSeedSubMat) then ("--seed-sub-mat " +  '"' + seedSeedSubMat + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""} \
      ~{if defined(kKScore) then ("--k-score " +  '"' + kKScore + '"') else ""} \
      ~{if defined(alphAlphSize) then ("--alph-size " +  '"' + alphAlphSize + '"') else ""} \
      ~{if defined(splitSplit) then ("--split " +  '"' + splitSplit + '"') else ""} \
      ~{if defined(splitSplitMode) then ("--split-mode " +  '"' + splitSplitMode + '"') else ""} \
      ~{true="--diag-score" false="" diagDiagScore} \
      ~{if defined(exactExactKmErMatching) then ("--exact-kmer-matching " +  '"' + exactExactKmErMatching + '"') else ""} \
      ~{if defined(maskMask) then ("--mask " +  '"' + maskMask + '"') else ""} \
      ~{if defined(maskMaskLowerCase) then ("--mask-lower-case " +  '"' + maskMaskLowerCase + '"') else ""} \
      ~{if defined(minMinUnGappedScore) then ("--min-ungapped-score " +  '"' + minMinUnGappedScore + '"') else ""} \
      ~{if defined(spacedSpacedKmErMode) then ("--spaced-kmer-mode " +  '"' + spacedSpacedKmErMode + '"') else ""} \
      ~{if defined(spacedSpacedKmErPattern) then ("--spaced-kmer-pattern " +  '"' + spacedSpacedKmErPattern + '"') else ""} \
      ~{if defined(localLocalTmp) then ("--local-tmp " +  '"' + localLocalTmp + '"') else ""} \
      ~{if defined(diskDiskSpaceLimit) then ("--disk-space-limit " +  '"' + diskDiskSpaceLimit + '"') else ""} \
      ~{true="-a" false="" aA} \
      ~{if defined(alignmentAlignmentMode) then ("--alignment-mode " +  '"' + alignmentAlignmentMode + '"') else ""} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{if defined(minMinSeqId) then ("--min-seq-id " +  '"' + minMinSeqId + '"') else ""} \
      ~{if defined(minMinAlnLen) then ("--min-aln-len " +  '"' + minMinAlnLen + '"') else ""} \
      ~{if defined(seqSeqIdMode) then ("--seq-id-mode " +  '"' + seqSeqIdMode + '"') else ""} \
      ~{if defined(altAltAli) then ("--alt-ali " +  '"' + altAltAli + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(covCovMode) then ("--cov-mode " +  '"' + covCovMode + '"') else ""} \
      ~{true="--realign" false="" realignRealign} \
      ~{if defined(maxMaxRejected) then ("--max-rejected " +  '"' + maxMaxRejected + '"') else ""} \
      ~{if defined(maxMaxAccept) then ("--max-accept " +  '"' + maxMaxAccept + '"') else ""} \
      ~{if defined(scoreScoreBias) then ("--score-bias " +  '"' + scoreScoreBias + '"') else ""} \
      ~{if defined(gapGapOpen) then ("--gap-open " +  '"' + gapGapOpen + '"') else ""} \
      ~{if defined(gapGapExtend) then ("--gap-extend " +  '"' + gapGapExtend + '"') else ""} \
      ~{if defined(pcPcA) then ("--pca " +  '"' + pcPcA + '"') else ""} \
      ~{if defined(pcbPcb) then ("--pcb " +  '"' + pcbPcb + '"') else ""} \
      ~{if defined(maskMaskProfile) then ("--mask-profile " +  '"' + maskMaskProfile + '"') else ""} \
      ~{if defined(eEProfile) then ("--e-profile " +  '"' + eEProfile + '"') else ""} \
      ~{true="--wg" false="" wgWg} \
      ~{if defined(filterFilterMsa) then ("--filter-msa " +  '"' + filterFilterMsa + '"') else ""} \
      ~{if defined(maxMaxSeqId) then ("--max-seq-id " +  '"' + maxMaxSeqId + '"') else ""} \
      ~{if defined(qidQid) then ("--qid " +  '"' + qidQid + '"') else ""} \
      ~{if defined(qscQsc) then ("--qsc " +  '"' + qscQsc + '"') else ""} \
      ~{if defined(covCov) then ("--cov " +  '"' + covCov + '"') else ""} \
      ~{if defined(diffDiff) then ("--diff " +  '"' + diffDiff + '"') else ""} \
      ~{if defined(numNumIterations) then ("--num-iterations " +  '"' + numNumIterations + '"') else ""} \
      ~{true="--slice-search" false="" sliceSliceSearch} \
      ~{true="--wrapped-scoring" false="" wrappedWrappedScoring} \
      ~{if defined(reReScoreMode) then ("--rescore-mode " +  '"' + reReScoreMode + '"') else ""} \
      ~{true="--allow-deletion" false="" allowAllowDeletion} \
      ~{if defined(minMinLength) then ("--min-length " +  '"' + minMinLength + '"') else ""} \
      ~{if defined(maxMaxLength) then ("--max-length " +  '"' + maxMaxLength + '"') else ""} \
      ~{if defined(maxMaxGaps) then ("--max-gaps " +  '"' + maxMaxGaps + '"') else ""} \
      ~{if defined(contigContigStartMode) then ("--contig-start-mode " +  '"' + contigContigStartMode + '"') else ""} \
      ~{if defined(contigContigEndMode) then ("--contig-end-mode " +  '"' + contigContigEndMode + '"') else ""} \
      ~{if defined(orfOrfStartMode) then ("--orf-start-mode " +  '"' + orfOrfStartMode + '"') else ""} \
      ~{if defined(forwardForwardFrames) then ("--forward-frames " +  '"' + forwardForwardFrames + '"') else ""} \
      ~{if defined(reverseReverseFrames) then ("--reverse-frames " +  '"' + reverseReverseFrames + '"') else ""} \
      ~{if defined(translationTranslationTable) then ("--translation-table " +  '"' + translationTranslationTable + '"') else ""} \
      ~{if defined(translateTranslate) then ("--translate " +  '"' + translateTranslate + '"') else ""} \
      ~{true="--use-all-table-starts" false="" useUseAllTableStarts} \
      ~{if defined(idIdOffset) then ("--id-offset " +  '"' + idIdOffset + '"') else ""} \
      ~{true="--add-orf-stop" false="" addAddOrfStop} \
      ~{if defined(searchSearchType) then ("--search-type " +  '"' + searchSearchType + '"') else ""} \
      ~{if defined(startStartSens) then ("--start-sens " +  '"' + startStartSens + '"') else ""} \
      ~{if defined(sensSensSteps) then ("--sens-steps " +  '"' + sensSensSteps + '"') else ""} \
      ~{true="--remove-tmp-files" false="" removeRemoveTmpFiles} \
      ~{if defined(dbtypeDbtype) then ("--dbtype " +  '"' + dbtypeDbtype + '"') else ""} \
      ~{true="--shuffle" false="" shuffleShuffle} \
      ~{if defined(createdCreatedBMode) then ("--createdb-mode " +  '"' + createdCreatedBMode + '"') else ""} \
      ~{if defined(ncbiNcbiTaxDump) then ("--ncbi-tax-dump " +  '"' + ncbiNcbiTaxDump + '"') else ""} \
      ~{if defined(taxTaxMappingFile) then ("--tax-mapping-file " +  '"' + taxTaxMappingFile + '"') else ""} \
      ~{if defined(blacklistBlacklist) then ("--blacklist " +  '"' + blacklistBlacklist + '"') else ""} \
      ~{if defined(kingdomsKingdoms) then ("--kingdoms " +  '"' + kingdomsKingdoms + '"') else ""} \
      ~{if defined(subSubMat) then ("--sub-mat " +  '"' + subSubMat + '"') else ""} \
      ~{if defined(maxMaxSeqLen) then ("--max-seq-len " +  '"' + maxMaxSeqLen + '"') else ""} \
      ~{if defined(dbDbLoadMode) then ("--db-load-mode " +  '"' + dbDbLoadMode + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(compressedCompressed) then ("--compressed " +  '"' + compressedCompressed + '"') else ""} \
      ~{if defined(vV) then ("-v " +  '"' + vV + '"') else ""} \
      ~{if defined(splitSplitMemoryLimit) then ("--split-memory-limit " +  '"' + splitSplitMemoryLimit + '"') else ""} \
      ~{if defined(mpiMpiRunner) then ("--mpi-runner " +  '"' + mpiMpiRunner + '"') else ""} \
      ~{true="--force-reuse" false="" forceForceReuse} \
      ~{true="--filter-hits" false="" filterFilterHits} \
      ~{if defined(sortSortResults) then ("--sort-results " +  '"' + sortSortResults + '"') else ""} \
      ~{true="--omit-consensus" false="" omitOmitConsensus} \
      ~{if defined(createCreateLookup) then ("--create-lookup " +  '"' + createCreateLookup + '"') else ""} \
      ~{if defined(chainChainAlignments) then ("--chain-alignments " +  '"' + chainChainAlignments + '"') else ""} \
      ~{if defined(mergeMergeQuery) then ("--merge-query " +  '"' + mergeMergeQuery + '"') else ""} \
      ~{if defined(strandStrand) then ("--strand " +  '"' + strandStrand + '"') else ""} \
      ~{if defined(steinSteinEgger) then ("- Steinegger " +  '"' + steinSteinEgger + '"') else ""}
  >>>
}