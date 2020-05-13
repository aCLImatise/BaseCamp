version 1.0

task PlassAssemble {
  input {
    Boolean addAddSelfMatches
    Int alphAlphSize
    Int maskMask
    Int maskMaskLowerCase
    Int kK
    String splitSplitMemoryLimit
    Float eE
    Float cC
    Boolean aA
    Int covCovMode
    Float minMinSeqId
    Int minMinAlnLen
    Int seqSeqIdMode
    Int kmKmErPerSeq
    Boolean adjustAdjustKmErLen
    Int hashHashShift
    Boolean includeIncludeOnlyExtendable
    Boolean ignoreIgnoreMultiKmEr
    Int numNumIterations
    Int reReScoreMode
    Boolean wrappedWrappedScoring
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
    Float proteinProteinFilterThreshold
    Int filterFilterProteins
    Int deleteDeleteTmpInc
    Boolean removeRemoveTmpFiles
    String subSubMat
    Int dbDbLoadMode
    Int threadsThreads
    Int compressedCompressed
    Int vV
    Int maxMaxSeqLen
    String mpiMpiRunner
    Boolean filterFilterHits
    Int sortSortResults
    Float kmKmErPerSeqScale
    Int createCreateLookup
  }
  command <<<
    plass assemble \
      ~{true="--add-self-matches" false="" addAddSelfMatches} \
      ~{if defined(alphAlphSize) then ("--alph-size " +  '"' + alphAlphSize + '"') else ""} \
      ~{if defined(maskMask) then ("--mask " +  '"' + maskMask + '"') else ""} \
      ~{if defined(maskMaskLowerCase) then ("--mask-lower-case " +  '"' + maskMaskLowerCase + '"') else ""} \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""} \
      ~{if defined(splitSplitMemoryLimit) then ("--split-memory-limit " +  '"' + splitSplitMemoryLimit + '"') else ""} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{true="-a" false="" aA} \
      ~{if defined(covCovMode) then ("--cov-mode " +  '"' + covCovMode + '"') else ""} \
      ~{if defined(minMinSeqId) then ("--min-seq-id " +  '"' + minMinSeqId + '"') else ""} \
      ~{if defined(minMinAlnLen) then ("--min-aln-len " +  '"' + minMinAlnLen + '"') else ""} \
      ~{if defined(seqSeqIdMode) then ("--seq-id-mode " +  '"' + seqSeqIdMode + '"') else ""} \
      ~{if defined(kmKmErPerSeq) then ("--kmer-per-seq " +  '"' + kmKmErPerSeq + '"') else ""} \
      ~{true="--adjust-kmer-len" false="" adjustAdjustKmErLen} \
      ~{if defined(hashHashShift) then ("--hash-shift " +  '"' + hashHashShift + '"') else ""} \
      ~{true="--include-only-extendable" false="" includeIncludeOnlyExtendable} \
      ~{true="--ignore-multi-kmer" false="" ignoreIgnoreMultiKmEr} \
      ~{if defined(numNumIterations) then ("--num-iterations " +  '"' + numNumIterations + '"') else ""} \
      ~{if defined(reReScoreMode) then ("--rescore-mode " +  '"' + reReScoreMode + '"') else ""} \
      ~{true="--wrapped-scoring" false="" wrappedWrappedScoring} \
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
      ~{if defined(proteinProteinFilterThreshold) then ("--protein-filter-threshold " +  '"' + proteinProteinFilterThreshold + '"') else ""} \
      ~{if defined(filterFilterProteins) then ("--filter-proteins " +  '"' + filterFilterProteins + '"') else ""} \
      ~{if defined(deleteDeleteTmpInc) then ("--delete-tmp-inc " +  '"' + deleteDeleteTmpInc + '"') else ""} \
      ~{true="--remove-tmp-files" false="" removeRemoveTmpFiles} \
      ~{if defined(subSubMat) then ("--sub-mat " +  '"' + subSubMat + '"') else ""} \
      ~{if defined(dbDbLoadMode) then ("--db-load-mode " +  '"' + dbDbLoadMode + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(compressedCompressed) then ("--compressed " +  '"' + compressedCompressed + '"') else ""} \
      ~{if defined(vV) then ("-v " +  '"' + vV + '"') else ""} \
      ~{if defined(maxMaxSeqLen) then ("--max-seq-len " +  '"' + maxMaxSeqLen + '"') else ""} \
      ~{if defined(mpiMpiRunner) then ("--mpi-runner " +  '"' + mpiMpiRunner + '"') else ""} \
      ~{true="--filter-hits" false="" filterFilterHits} \
      ~{if defined(sortSortResults) then ("--sort-results " +  '"' + sortSortResults + '"') else ""} \
      ~{if defined(kmKmErPerSeqScale) then ("--kmer-per-seq-scale " +  '"' + kmKmErPerSeqScale + '"') else ""} \
      ~{if defined(createCreateLookup) then ("--create-lookup " +  '"' + createCreateLookup + '"') else ""}
  >>>
}